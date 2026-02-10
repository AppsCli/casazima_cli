import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';
import '../services/api_service.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  int _step = 1;
  bool _isLoading = false;
  bool _isLogin = false;
  String? _initKey;

  @override
  void initState() {
    super.initState();
    // 尝试从路由参数中获取 initKey
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchInitKey();
    });
  }

  Future<void> _fetchInitKey() async {
    try {
      final api = ApiService();
      final res = await api.getUserStatus();
      if (res['success'] == 200 && res['data'] is Map<String, dynamic>) {
        final data = res['data'] as Map<String, dynamic>;
        final initialized = data['initialized'] as bool? ?? true;
        if (!initialized) {
          setState(() {
            _initKey = data['key'] as String?;
          });
        } else {
          if (mounted) {
            context.go('/login');
          }
        }
      }
    } catch (_) {
      // 获取失败时，回到登录页
      if (mounted) {
        context.go('/login');
      }
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  void _goToStep(int step) {
    setState(() {
      _step = step;
    });
  }

  Future<void> _register() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_initKey == null) {
      await _fetchInitKey();
      if (_initKey == null) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('无法获取初始化密钥，请检查服务器状态'),
              backgroundColor: Colors.red,
            ),
          );
        }
        return;
      }
    }

    setState(() {
      _isLoading = true;
    });

    final api = ApiService();
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    try {
      final success = await api.register(
        _usernameController.text,
        _passwordController.text,
        _initKey!,
      );

      if (!success) {
        throw Exception('注册失败');
      }

      // 注册成功后自动登录
      final loginOk = await authProvider.login(
        _usernameController.text,
        _passwordController.text,
      );

      if (!loginOk) {
        throw Exception(authProvider.error ?? '登录失败');
      }

      // 首次登录设置默认 app 顺序
      await api.setCustomStorage('app_order', {
        'data': ['App Store', 'Files'],
      });

      setState(() {
        _isLogin = true;
        _isLoading = false;
      });

      _goToStep(3);
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('初始化失败：$e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _complete() {
    if (!mounted) return;
    if (_isLogin) {
      context.go('/home');
    } else {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueGrey.shade900,
              Colors.blueGrey.shade700,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: _buildStepContent(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_step) {
      case 1:
        return _buildStep1();
      case 2:
        return _buildStep2();
      case 3:
        return _buildStep3();
      default:
        return _buildStep1();
    }
  }

  Widget _buildStep1() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.cloud,
          size: 80,
          color: Colors.blue,
        ),
        const SizedBox(height: 24),
        const Text(
          '欢迎使用 CasaOS / ZimaOS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        const Text(
          '让我们先创建你的初始账户。',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => _goToStep(2),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: const Text('开始 →'),
          ),
        ),
      ],
    );
  }

  Widget _buildStep2() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '创建账户',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: '用户名',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入用户名';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: '密码',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入密码';
              }
              if (value.length < 5) {
                return '密码至少需要 5 个字符';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _confirmController,
            decoration: const InputDecoration(
              labelText: '确认密码',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请再次输入密码';
              }
              if (value != _passwordController.text) {
                return '两次输入的密码不一致';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isLoading ? null : _register,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Text('创建'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStep3() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 80,
          color: Colors.green,
        ),
        const SizedBox(height: 24),
        const Text(
          '全部搞定！',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        const Text(
          '你的账户已经创建完成，马上进入桌面体验 CasaOS / ZimaOS。',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _complete,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: const Text('进入桌面'),
          ),
        ),
      ],
    );
  }
}

