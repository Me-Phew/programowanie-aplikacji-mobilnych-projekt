import 'package:flutter/material.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/screens/profile/profile_page.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Język do wyboru
final languages = ['Polish', 'English'];

final selectedLanguageProvider =
    StateNotifierProvider<SelectedLanguageNotifier, String>((ref) {
  return SelectedLanguageNotifier();
});

class SelectedLanguageNotifier extends StateNotifier<String> {
  SelectedLanguageNotifier() : super('Polish') {
    _loadSavedLanguage();
  }

  Future<void> _loadSavedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getString('selectedLanguage') ?? 'Polish';
  }

  Future<void> setLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', language);
    state = language;
  }
}

class SettingsPage extends ConsumerWidget {
  final AppUser user;
  const SettingsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Pobieranie wartości isDarkMode z providera
    final isDarkMode = ref.watch(darkModeProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120),
              SettingsHeading(AppLocalizations.of(context)!.account),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(
                        "assets/images/Example.png",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20), // Usuń height
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SettingsText("${user.email}"),
                        const SizedBox(height: 6),
                        const SettingsTextInside("Student"),
                      ],
                    ),
                    const Spacer(),
                    StyledButtonSettings(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditAccount(user: user)));
                    }),
                  ],
                ),
              ),

              const SizedBox(height: 40),
              SettingsHeading(AppLocalizations.of(context)!.settings),
              const SizedBox(height: 20),
              SettingItem(
                title: AppLocalizations.of(context)!.language,
                value: ref.watch(selectedLanguageProvider),
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                icon: Icons.public,
                // Wybór języka
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title:
                            Text(AppLocalizations.of(context)!.selectLanguage),
                        content: Container(
                          width: double.minPositive,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: languages.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                title: Text(languages[index]),
                                onTap: () {
                                  ref
                                      .read(selectedLanguageProvider.notifier)
                                      .setLanguage(languages[index]);
                                  ref
                                      .read(localeProvider.notifier)
                                      .changeLocale(languages[index]);
                                  Navigator.pop(context);
                                },
                              );
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),

              // Powiadomienia
              SettingItem(
                title: AppLocalizations.of(context)!.notifications,
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                icon: Icons.notifications,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                            AppLocalizations.of(context)!.notificationSettings),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: const Icon(Icons.timer),
                              title:
                                  Text(AppLocalizations.of(context)!.pause24h),
                              onTap: () {
                                // Implement 24h pause logic
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Icon(
                                  ref.watch(notificationsEnabledProvider)
                                      ? Icons.notifications_off
                                      : Icons.notifications_on),
                              title: Text(
                                  ref.watch(notificationsEnabledProvider)
                                      ? AppLocalizations.of(context)!
                                          .disableNotifications
                                      : AppLocalizations.of(context)!
                                          .enableNotifications),
                              onTap: () {
                                ref
                                    .read(notificationsEnabledProvider.notifier)
                                    .toggle();
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),

              const SizedBox(height: 20),

              // Pomoc
              SettingItem(
                title: AppLocalizations.of(context)!.help,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                icon: Icons.contact_support,
                onTap: () {},
              ),
              const SizedBox(height: 20),

              // DarkMode
              SettingSwitch(
                title: AppLocalizations.of(context)!.darkMode,
                value: isDarkMode,
                bgColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade800,
                icon: Icons.dark_mode,
                onTap: (value) {
                  // Zmiana stanu isDarkMode za pomocą providera
                  ref.read(darkModeProvider.notifier).toggleDarkMode(value);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
