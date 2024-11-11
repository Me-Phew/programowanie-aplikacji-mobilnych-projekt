import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  static Future<File?> pickImageFromGallery(BuildContext context) async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) {
      return null;
    }

    return File(returnedImage.path);
  }

  static Future<File?> pickImageFromCamera(BuildContext context) async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) {
      return null;
    }

    return File(returnedImage.path);
  }

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
                title: Text('Wybierz z galerii'),
                onTap: () async {
                  Navigator.of(context).pop();
                  final image = await pickImageFromGallery(context);
                  onImageSelected(image);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Zrób zdjęcie'),
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
