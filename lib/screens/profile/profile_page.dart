import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/providers/auth_state_provider.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/screens/welcome/welcome_page.dart';
import 'package:flutter_application/utils/image_picker_service.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_widgets.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_http_client.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'profile_page_data_row.dart';

class EditAccount extends ConsumerStatefulWidget {
  final Student student;
  late final String formattedNameAndFamilyName;

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

  Future<void> _uploadImage(File image) async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // Create form data
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          image.path,
          filename: 'profile_picture.jpg',
        ),
      });

      // Upload image
      final response = await WirtualnyHttpClient.instance.dio.post(
        'api/media/upload',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${WirtualnySdk.instance.auth.accessToken}',
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      if (!mounted) return;

      if (response.statusCode == 200) {
        // Update student profile with new image
        final updateResponse = await WirtualnyHttpClient.instance.dio.patch(
          '/api/students/${_student.id}',
          data: {
            'profilePicture': response.data['id'],
          },
          options: Options(
            headers: {
              'Authorization': 'Bearer ${WirtualnySdk.instance.auth.accessToken}',
              'Content-Type': 'application/json',
            },
          ),
        );

        if (!mounted) return;

        if (updateResponse.statusCode == 200) {
          // Create new student object with updated data
          final updatedStudent = Student.fromJson(updateResponse.data);
          
          setState(() {
            _student = updatedStudent;
            _isLoading = false;
          });

          // Update global student state
          ref.read(studentProvider.notifier).updateStudent(updatedStudent);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Zdjęcie profilowe zostało zaktualizowane')),
          );
        }
      }
    } catch (e) {
      if (!mounted) return;
      print('Error uploading image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nie udało się zaktualizować zdjęcia profilowego')),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _showImageSourceActionSheet() {
    ImagePickerService.showImageSourceActionSheet(context, (image) {
      if (image != null) {
        setState(() {
          _selectedImage = image;
        });
        _uploadImage(image);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: AppLocalizations.of(context)!.photo,
                widget: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: _selectedImage != null
                              ? Image.file(
                                  _selectedImage!,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                )
                              : _student.profilePicture != null
                                  ? Image.network(
                                      "${dotenv.env['REST_API_BASE_URL']}${_student.profilePicture!.url.replaceFirst(RegExp('/api/'), '')}",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                      headers: {
                                        'Authorization': 'Bearer ${WirtualnySdk.instance.auth.accessToken}'
                                      },
                                    )
                                  : Image.asset(
                                      "assets/images/Example.png",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                        ),
                        if (_isLoading)
                          const CircularProgressIndicator(),
                      ],
                    ),
                    TextButton(
                      onPressed: _showImageSourceActionSheet,
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

              const SizedBox(height: 70),

              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    StyledButton(
                      onPressed: () async {
                        // Sign out from the SDK
                        await WirtualnySdk.instance.auth.signOut();

                        if (mounted) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: StyledButtonText(
                          AppLocalizations.of(context)!.logout),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
