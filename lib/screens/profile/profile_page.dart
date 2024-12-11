import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/image_picker_service.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_widgets.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      body: Padding(
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
                      child: _selectedImage != null
                          ? Image.file(
                              _selectedImage!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
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
              textLeft: AppLocalizations.of(context)!.indexNumber,
              textRight: widget.student.indexNumber,
            ),

            // Kieruneki studiów
            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Kierunki studiów",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),

            Card(
              surfaceTintColor: Colors.blueAccent,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: ListTile(
                              title: Text(widget
                                  .student.coursesOfStudy[index].fieldOfStudy),
                              subtitle: Text(widget
                                  .student.coursesOfStudy[index].obtainedTitle),
                            ),
                          );
                        },
                        itemCount: widget.student.coursesOfStudy.length),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 70),

            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledButton(
                      onPressed: () {
                        // TODO
                        // AuthService.signOut();
                        if (mounted) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: StyledButtonText(
                          AppLocalizations.of(context)!.logout)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
