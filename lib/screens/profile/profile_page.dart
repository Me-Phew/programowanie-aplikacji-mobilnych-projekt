/**
 * @file profile_page.dart
 * @brief Ekran profilu użytkownika z możliwością edycji danych.
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/utils/image_picker_service.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_widgets.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'profile_page_data_row.dart';

class EditAccount extends ConsumerStatefulWidget {
  final Student student;
  late final String formattedNameAndFamilyName;

  /**
   * @brief Konstruktor widgetu EditAccount.
   * @param student Obiekt studenta zawierający dane do wyświetlenia.
   */
  EditAccount({super.key, required this.student}) {
    formattedNameAndFamilyName = student.middleName != null
        ? "${student.firstName} ${student.middleName} ${student.familyName}"
        : "${student.firstName} ${student.familyName}";
  }

  @override
  ConsumerState<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends ConsumerState<EditAccount> {
  File? _selectedImage;
  bool _isLoading = false;
  late Student _student;

  @override
  void initState() {
    super.initState();
    _student = widget.student;
  }

  /**
   * @brief Przesyła nowe zdjęcie profilowe na serwer.
   * @param image Plik obrazu do przesłania.
   */
  Future<void> _uploadImage(File image) async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
    });

    final imageUpdateResult =
        await WirtualnySdk.instance.auth.changeUserImage(newImage: image);

    imageUpdateResult.fold((l) {
      if (!mounted) return;

      print('Error uploading image: ${l.message}');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nie udało się zaktualizować zdjęcia profilowego'),
          backgroundColor: Colors.red,
        ),
      );
    }, (r) {
      setState(() {
        _student = WirtualnySdk.instance.auth.student!;
        _selectedImage = image;
      });

      // Update both providers
      ref.read(studentProvider.notifier).updateStudent(_student);
      ref.read(profileImageKeyProvider.notifier).state =
          ValueKey(DateTime.now().millisecondsSinceEpoch);

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Zdjęcie profilowe zostało zaktualizowane'),
          backgroundColor: Colors.green,
        ),
      );
    });

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });
  }

  /**
   * @brief Buduje widget wyświetlający zdjęcie profilowe.
   * @return Widget wyświetlający zdjęcie profilowe.
   */
  Widget _buildProfileImage() {
    return Consumer(
      builder: (context, ref, child) {
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final imageKey = ref.watch(profileImageKeyProvider);
        final currentStudent = ref.watch(studentProvider) ?? _student;

        return ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: _selectedImage != null
              ? Image.file(
                  _selectedImage!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                )
              : currentStudent.profilePicture != null
                  ? Image.network(
                      "${dotenv.env['REST_API_BASE_URL']}${Uri.parse(currentStudent.profilePicture!.url).path.replaceFirst('/api', '')}?t=$timestamp",
                      key: imageKey,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      headers: {
                        'Authorization':
                            'Bearer ${WirtualnySdk.instance.auth.accessToken}'
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          "assets/images/Example.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        );
                      },
                    )
                  : Image.asset(
                      "assets/images/Example.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.profile,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: AppLocalizations.of(context)!.photo,
                widget: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildProfileImage(), // Użycie wyodrębnionego widgetu
                        if (_isLoading) const CircularProgressIndicator(),
                      ],
                    ),
                    TextButton(
                      onPressed: () =>
                          ImagePickerService.showImageSourceActionSheet(
                        context,
                        (image) {
                          if (image != null) {
                            _uploadImage(image);
                          }
                        },
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.lightBlueAccent,
                      ),
                      child: Text(AppLocalizations.of(context)!.updatePhoto),
                    ),
                  ],
                ),
              ),

              // Nazwa użytkownika
              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.username,
                textRight: widget.student.username,
              ),

              // Imie i Nazwisko
              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.name,
                textRight: widget.formattedNameAndFamilyName,
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.dateOfBirth,
                textRight: widget.student.dateOfBirth
                    .toLocal()
                    .toString()
                    .split(' ')[0],
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.email,
                textRight:
                    widget.student.coursesOfStudy[0].faculty.contact.email,
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.phoneNumber,
                textRight: widget.student.coursesOfStudy.isNotEmpty &&
                        widget.student.coursesOfStudy[0].faculty.contact
                            .phoneNumbers.isNotEmpty
                    ? widget.student.coursesOfStudy[0].faculty.contact
                        .phoneNumbers[0].phoneNumber
                    : 'N/A',
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.indexNumber,
                textRight: widget.student.indexNumber,
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.fieldOfStudy,
                textRight: widget.student.coursesOfStudy.isNotEmpty
                    ? widget.student.coursesOfStudy[0].fieldOfStudy
                    : 'N/A',
              ),
              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.faculty,
                textRight: widget.student.coursesOfStudy[0].faculty.name,
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.studyPeriod,
                textRight:
                    "${DateFormat('MM/yyyy').format(widget.student.coursesOfStudy[0].startDate)} - ${DateFormat('MM/yyyy').format(widget.student.coursesOfStudy[0].endDate)}",
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.courseType,
                textRight: widget.student.coursesOfStudy[0].courseType,
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.levelOfStudy,
                textRight: widget.student.coursesOfStudy[0].levelOfStudy,
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.obtainedTitle,
                textRight: widget.student.coursesOfStudy[0].obtainedTitle,
              ),

              const SizedBox(height: 20),
              ProfilePageDataRow(
                textLeft: AppLocalizations.of(context)!.semester,
                textRight:
                    "${widget.student.coursesOfStudy[0].currentSemester}/${widget.student.coursesOfStudy[0].numberOfSemesters}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
