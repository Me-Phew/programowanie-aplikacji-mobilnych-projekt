import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/utils/image_picker_service.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_widgets.dart';
import 'package:flutter_application/services/auth_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditAccount extends StatefulWidget {
  final AppUser user;
  const EditAccount({super.key, required this.user});

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
              AppLocalizations.of(context)!.account,
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

            // Imie i Nazwisko
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileTextLeft(
                  AppLocalizations.of(context)!.name,
                ),
                const SizedBox(width: 80),
                ProfileTextRight(
                  "Jan Kowalski",
                ),
              ],
            ),

            // Email
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileTextLeft(
                  "Email",
                ),
                const SizedBox(width: 160),
                ProfileTextRight(
                  widget.user.email,
                ),
              ],
            ),

            // Numer Telefonu
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileTextLeft(
                  AppLocalizations.of(context)!.phone,
                ),
                const SizedBox(width: 60),
                ProfileTextRight(
                  "+48 555 555 555",
                ),
              ],
            ),

            // Kierunek
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileTextLeft(
                  AppLocalizations.of(context)!.field,
                ),
                const SizedBox(width: 100),
                ProfileTextRight(
                  "Informatyka Stosowana",
                ),
              ],
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
                        AuthService.signOut();
                        if (mounted) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: StyledButtonText(AppLocalizations.of(context)!.logout)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
