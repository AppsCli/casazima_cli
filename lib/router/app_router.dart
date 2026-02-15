import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/server_config_screen.dart';
import '../screens/welcome_screen.dart';
import '../screens/file_browser_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/app_store_screen.dart';
import '../screens/app_detail_screen.dart';
import '../providers/auth_provider.dart';
import '../services/api_service.dart';

class AppRouter {
  static GoRouter getRouter() {
    return GoRouter(
      initialLocation: '/login',
      redirect: (context, state) async {
        // Get auth provider from context
        final authProvider = Provider.of<AuthProvider>(context, listen: false);
        final isLoggedIn = authProvider.isAuthenticated;
        final isLoggingIn = state.matchedLocation == '/login';
        final isWelcome = state.matchedLocation == '/welcome';
        final isServerConfig = state.matchedLocation == '/server-config';
        final isSettings = state.matchedLocation == '/settings';

        // Allow access to server config, welcome, and settings (e.g. language) when not logged in
        if (isServerConfig || isWelcome || isSettings) {
          return null;
        }

        // Check if initialization is needed
        if (!isLoggedIn && !isLoggingIn) {
          try {
            final api = ApiService();
            final status = await api.getUserStatus();
            if (status['success'] == 200 && status['data'] is Map<String, dynamic>) {
              final data = status['data'] as Map<String, dynamic>;
              final initialized = data['initialized'] as bool? ?? true;
              if (!initialized) {
                // Need initialization, redirect to welcome
                return '/welcome';
              }
            }
          } catch (e) {
            // If check fails, go to login
            return '/login';
          }
          return '/login';
        }

        // Redirect to home if already logged in and trying to access login
        if (isLoggedIn && isLoggingIn) {
          return '/home';
        }

        return null;
      },
      routes: [
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/server-config',
          name: 'server-config',
          builder: (context, state) => const ServerConfigScreen(),
        ),
        GoRoute(
          path: '/settings',
          name: 'settings',
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: '/welcome',
          name: 'welcome',
          builder: (context, state) => const WelcomeScreen(),
        ),
        GoRoute(
          path: '/files',
          name: 'files',
          builder: (context, state) {
            final path = state.uri.queryParameters['path'];
            return FileBrowserScreen(initialPath: path);
          },
        ),
        GoRoute(
          path: '/app-store',
          name: 'app-store',
          builder: (context, state) => const AppStoreScreen(),
        ),
        GoRoute(
          path: '/app/:id',
          name: 'app-detail',
          builder: (context, state) {
            final id = state.pathParameters['id'] ?? '';
            return AppDetailScreen(appId: id);
          },
        ),
      ],
    );
  }
}
