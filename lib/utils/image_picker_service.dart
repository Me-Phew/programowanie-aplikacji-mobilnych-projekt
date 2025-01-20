/// @file image_picker_service.dart
/// @brief Usługa do wybierania obrazów z galerii lub aparatu.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImagePickerService {
  /// @brief Wybiera obraz z galerii.
  /// @param context Kontekst aplikacji.
  /// @return Plik obrazu lub null, jeśli nie wybrano obrazu.
  static Future<File?> pickImageFromGallery(BuildContext context) async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) {
      return null;
    }

    return File(returnedImage.path);
  }

  /// @brief Wybiera obraz z aparatu.
  /// @param context Kontekst aplikacji.
  /// @return Plik obrazu lub null, jeśli nie wybrano obrazu.
  static Future<File?> pickImageFromCamera(BuildContext context) async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) {
      return null;
    }

    return File(returnedImage.path);
  }

  /// @brief Wyświetla arkusz akcji do wyboru źródła obrazu.
  /// @param context Kontekst aplikacji.
  /// @param onImageSelected Funkcja wywoływana po wybraniu obrazu.
  static void showImageSourceActionSheet(
      BuildContext context, Function(File?) onImageSelected) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text(AppLocalizations.of(context)!.choseGallery),
                onTap: () async {
                  Navigator.of(context).pop();
                  final image = await pickImageFromGallery(context);
                  onImageSelected(image);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text(AppLocalizations.of(context)!.takePhoto),
                onTap: () async {
                  Navigator.of(context).pop();
                  final image = await pickImageFromCamera(context);
                  onImageSelected(image);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
