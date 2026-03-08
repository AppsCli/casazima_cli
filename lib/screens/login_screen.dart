import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../l10n/app_localizations.dart';
import '../providers/auth_provider.dart';
import '../providers/server_config_provider.dart';
import '../services/api_service.dart';

const _keyRememberCredentials = 'remember_credentials';
const _keySavedUsername = 'saved_username';
const _keySavedPassword = 'saved_password';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _rememberCredentials = false;

  @override
  void initState() {
    super.initState();
    _loadRememberedCredentials();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkInit();
    });
  }

  Future<void> _loadRememberedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    final remember = prefs.getBool(_keyRememberCredentials) ?? false;
    if (!mounted) return;
    setState(() => _rememberCredentials = remember);
    if (remember) {
      final username = prefs.getString(_keySavedUsername);
      final password = prefs.getString(_keySavedPassword);
      if (username != null) _usernameController.text = username;
      if (password != null) _passwordController.text = password;
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _checkInit() async {
    final serverProvider = Provider.of<ServerConfigProvider>(context, listen: false);
    if (!serverProvider.hasActiveServer) {
      return; // No server configured, skip check
    }

    try {
      final api = ApiService();
      final status = await api.getUserStatus();
      if (status['success'] == 200 && status['data'] is Map<String, dynamic>) {
        final data = status['data'] as Map<String, dynamic>;
        final initialized = data['initialized'] as bool? ?? true;
        if (!initialized && mounted) {
          // Need initialization, redirect to welcome
          final initKey = data['key'] as String?;
          if (initKey != null) {
            context.go('/welcome', extra: initKey);
          } else {
            context.go('/welcome');
          }
        }
      }
    } catch (e) {
      // Check failed, stay on login page
      debugPrint('Init check failed: $e');
    }
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final serverProvider = Provider.of<ServerConfigProvider>(context, listen: false);

    // Check if there's an active server
    if (!serverProvider.hasActiveServer) {
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.configureServerFirst),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    final success = await authProvider.login(
      _usernameController.text,
      _passwordController.text,
    );

    if (mounted) {
      if (success) {
        final prefs = await SharedPreferences.getInstance();
        if (_rememberCredentials) {
          await prefs.setBool(_keyRememberCredentials, true);
          await prefs.setString(_keySavedUsername, _usernameController.text);
          await prefs.setString(_keySavedPassword, _passwordController.text);
        } else {
          await prefs.setBool(_keyRememberCredentials, false);
          await prefs.remove(_keySavedUsername);
          await prefs.remove(_keySavedPassword);
        }
        if (context.mounted) {
          context.go('/home');
        }
      } else {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(authProvider.error ?? l10n.loginFailed),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade900,
              Colors.blue.shade700,
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.cloud,
                          size: 80,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'CasaOS / ZimaOS',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Consumer<ServerConfigProvider>(
                          builder: (context, provider, child) {
                            if (provider.hasActiveServer) {
                              return Text(
                                provider.activeServer!.name,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                ),
                              );
                            } else {
                              return TextButton.icon(
                                onPressed: () {
                                  context.push('/server-config');
                                },
                                icon: const Icon(Icons.settings),
                                label: Text(l10n.configureServer),
                              );
                            }
                          },
                        ),
                        const SizedBox(height: 32),
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: l10n.username,
                            prefixIcon: const Icon(Icons.person),
                            border: const OutlineInputBorder(),
                          ),
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return l10n.usernameRequired;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: l10n.password,
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            border: const OutlineInputBorder(),
                          ),
                          obscureText: _obscurePassword,
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => _handleLogin(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return l10n.passwordRequired;
                            }
                            if (value.length < 5) {
                              return l10n.passwordMinLength;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                l10n.rememberCredentials,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                            Switch(
                              value: _rememberCredentials,
                              onChanged: (value) {
                                setState(() => _rememberCredentials = value);
                                if (!value) {
                                  SharedPreferences.getInstance().then((prefs) {
                                    prefs.remove(_keySavedUsername);
                                    prefs.remove(_keySavedPassword);
                                    prefs.setBool(_keyRememberCredentials, false);
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Consumer<AuthProvider>(
                          builder: (context, authProvider, child) {
                            return SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: authProvider.isLoading
                                    ? null
                                    : _handleLogin,
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: authProvider.isLoading
                                    ? const SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor: AlwaysStoppedAnimation<Color>(
                                            Colors.white,
                                          ),
                                        ),
                                      )
                                    : Text(
                                        l10n.login,
                                        style: const TextStyle(fontSize: 16),
                                      ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () {
                            context.push('/server-config');
                          },
                          child: Text(l10n.serverConfig),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.language, color: Colors.white),
                  tooltip: l10n.language,
                  onPressed: () => context.push('/settings'),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
