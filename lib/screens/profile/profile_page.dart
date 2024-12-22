import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application/providers/auth_state_provider.dart';
import 'package:flutter_application/screens/welcome/welcome_page.dart';
import 'package:flutter_application/utils/image_picker_service.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_widgets.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'profile_page_data_row.dart';

class EditAccount extends StatefulWidget {
  final Student student;
  late final String formattedNameAndFamilyName;

  EditAccount({super.key, required this.student}) {
    formattedNameAndFamilyName = student.middleName != null
        ? "${student.firstName} ${student.middleName} ${student.familyName}"
        : "${student.firstName} ${student.familyName}";
  }

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  File? _selectedImage;

  void _showImageSourceActionSheet() {
    ImagePickerService.showImageSourceActionSheet(context, (image) {
      if (image != null) {
        setState(() {
          _selectedImage = image;
        });
      }
    });
  }

  Future<void> saveImage() async {
    if (_selectedImage != null) {
      // Tutaj trzeba będzie zaimplementować logikę zapisywania obrazu
      // Będzie trzeba przesłać obraz na serwer i zapisać w bazie danych itp xd
      print('Image saved: ${_selectedImage!.path}');
    } else {
      print('No image selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left),
        ),
        leadingWidth: 80,
        actions: [
          IconButton(
              onPressed: saveImage,
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: Size(60, 50),
                elevation: 3,
              ),
              icon: Icon(Icons.check, color: Colors.black))
        ],
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
                    textStyle:
                        TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: AppLocalizations.of(context)!.photo,
                widget: Column(children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        // child: _selectedImage != null
                        //     ? Image.file(
                        //         _selectedImage!,
                        //         width: 100,
                        //         height: 100,
                        //         fit: BoxFit.cover,
                        //       )
                        //     : Image.asset(
                        //         "assets/images/Example.png",
                        //         width: 100,
                        //         height: 100,
                        //         fit: BoxFit.cover,
                        //       ),
                        child: widget.student.profilePicture != null
                            ? Image.network(
                                "${dotenv.env['REST_API_BASE_URL']}${widget.student.profilePicture!.url.replaceFirst(RegExp('/api/'), '')}",
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
                      TextButton(
                        onPressed: _showImageSourceActionSheet,
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.lightBlueAccent,
                        ),
                        child: Text(AppLocalizations.of(context)!.updatePhoto),
                      ),
                    ],
                  ),
                ]),
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
