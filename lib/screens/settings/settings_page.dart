import 'package:flutter/material.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/screens/profile/profile_page.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_widgets.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Język do wyboru
final languages = ['Polish', 'English'];

class SettingsPage extends ConsumerWidget {
  final Student student;
  const SettingsPage({super.key, required this.student});

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
              SettingsHeading(AppLocalizations.of(context)!.profile),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: student.profilePicture != null
                          ? Image.network(
                              "${dotenv.env['REST_API_BASE_URL']}${student.profilePicture!.url.replaceFirst(RegExp('/api/'), '')}",
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              headers: {
                                'Authorization':
                                    'Bearer ${WirtualnySdk.instance.auth.accessToken}'
                              },
                            )
                          : Image.asset(
                              "assets/images/Example.png",
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                    ),
                    const SizedBox(width: 20), // Usuń height
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SettingsText(
                            "${student.firstName} ${student.familyName}"),
                        const SizedBox(height: 6),
                        const SettingsTextInside("Student"),
                      ],
                    ),
                    const Spacer(),
                    StyledButtonSettings(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EditAccount(student: student)));
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
              SettingSwitch(
                title: AppLocalizations.of(context)!.notifications,
                value: ref.watch(notificationsEnabledProvider),
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                icon: Icons.notifications,
                onTap: (value) {
                  ref
                      .read(notificationsEnabledProvider.notifier)
                      .toggleNotifications(value);
                },
              ),

              const SizedBox(height: 20),
              // Biometric authentication setting
              SettingSwitch(
                title: AppLocalizations.of(context)!.useBiometrics,
                value: ref.watch(biometricsEnabledProvider),
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                icon: Icons.fingerprint,
                onTap: (value) async {
                  if (value) {
                    final LocalAuthentication localAuth = LocalAuthentication();
                    final bool canCheckBiometrics =
                        await localAuth.canCheckBiometrics;
                    final List<BiometricType> availableBiometrics =
                        await localAuth.getAvailableBiometrics();

                    print('Can check biometrics: $canCheckBiometrics');
                    print('Available biometrics: $availableBiometrics');

                    // Check for either strong or weak biometrics
                    if (!canCheckBiometrics ||
                        (!availableBiometrics.contains(BiometricType.strong) &&
                            !availableBiometrics
                                .contains(BiometricType.weak))) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Urządzenie nie obsługuje uwierzytelniania biometrycznego'),
                        ),
                      );
                      return;
                    }
                  }

                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('useBiometrics', value);
                  ref
                      .read(biometricsEnabledProvider.notifier)
                      .toggleBiometrics(value);

                  print('Biometrics enabled: $value');
                },
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

              // Pomoc
              SettingItem(
                title: AppLocalizations.of(context)!.help,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                icon: Icons.contact_support,
                onTap: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
