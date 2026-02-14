import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../l10n/app_localizations.dart';
import '../providers/locale_provider.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const List<Color> _presetColors = <Color>[
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.red,
  ];

  /// Resolve override to a supported locale instance so RadioListTile groupValue matches.
  static Locale? _selectedLocaleForRadio(Locale? override) {
    if (override == null) return null;
    for (final supported in LocaleProvider.supportedLocales) {
      if (supported.languageCode == override.languageCode &&
          (supported.scriptCode ?? '') == (override.scriptCode ?? '')) {
        return supported;
      }
    }
    return null;
  }

  String _themeModeLabel(BuildContext context, ThemeMode mode) {
    final l10n = AppLocalizations.of(context)!;
    switch (mode) {
      case ThemeMode.system:
        return l10n.followSystem;
      case ThemeMode.light:
        return l10n.lightMode;
      case ThemeMode.dark:
        return l10n.darkMode;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/home');
            }
          },
          tooltip: '返回',
        ),
        title: Text(l10n.settings),
      ),
      body: Consumer2<ThemeProvider, LocaleProvider>(
        builder: (context, themeProvider, localeProvider, child) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                l10n.appearance,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(l10n.themeMode),
                      subtitle: Text(_themeModeLabel(context, themeProvider.themeMode)),
                    ),
                    RadioListTile<ThemeMode>(
                      title: Text(l10n.followSystem),
                      value: ThemeMode.system,
                      groupValue: themeProvider.themeMode,
                      onChanged: (ThemeMode? value) {
                        if (value != null) {
                          themeProvider.setThemeMode(value);
                        }
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      title: Text(l10n.lightMode),
                      value: ThemeMode.light,
                      groupValue: themeProvider.themeMode,
                      onChanged: (ThemeMode? value) {
                        if (value != null) {
                          themeProvider.setThemeMode(value);
                        }
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      title: Text(l10n.darkMode),
                      value: ThemeMode.dark,
                      groupValue: themeProvider.themeMode,
                      onChanged: (ThemeMode? value) {
                        if (value != null) {
                          themeProvider.setThemeMode(value);
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.themeColor,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: _presetColors.map((Color color) {
                          final bool isSelected =
                              themeProvider.seedColor.toARGB32() == color.toARGB32();
                          return GestureDetector(
                            onTap: () {
                              themeProvider.setSeedColor(color);
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: color,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: isSelected
                                      ? Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer
                                      : Colors.transparent,
                                  width: isSelected ? 3 : 1,
                                ),
                              ),
                              child: isSelected
                                  ? Icon(
                                      Icons.check,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    )
                                  : null,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.themeColorDescription,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                l10n.language,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(l10n.language),
                      subtitle: Text(
                        localeProvider.isFollowSystem
                            ? l10n.languageFollowSystem
                            : LocaleProvider.nativeName(localeProvider.effectiveLocale),
                      ),
                    ),
                    RadioListTile<Locale?>(
                      title: Text(l10n.languageFollowSystem),
                      value: null,
                      groupValue: _selectedLocaleForRadio(localeProvider.overrideLocale),
                      onChanged: (Locale? value) {
                        localeProvider.setLocale(null);
                      },
                    ),
                    ...LocaleProvider.supportedLocales.map((Locale locale) {
                      return RadioListTile<Locale?>(
                        title: Text(LocaleProvider.nativeName(locale)),
                        value: locale,
                        groupValue: _selectedLocaleForRadio(localeProvider.overrideLocale),
                        onChanged: (Locale? value) {
                          if (value != null) {
                            localeProvider.setLocale(value);
                          }
                        },
                      );
                    }),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
