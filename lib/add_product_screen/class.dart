import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductClass {
  static File? file;

  static Future<void> selectImageFromGallary() async {
    ImagePicker pickImageData = ImagePicker();
    XFile? xFile = await pickImageData.pickImage(source: ImageSource.gallery);
    file = xFile != null ? File(xFile.path) : null;
  }

  static Future<void> selectImageFromCamera() async {
    ImagePicker pickImageData = ImagePicker();
    XFile? xFile = await pickImageData.pickImage(source: ImageSource.camera);
    file = xFile != null ? File(xFile.path) : null;
  }

  static TextEditingController dateSelectionController =
      TextEditingController();

  static TextEditingController productNameController = TextEditingController();
  static TextEditingController uriController = TextEditingController();

  static int selectedIndex = 0;

  static bool isUpdate = false;

  static List<Map<String, dynamic>> dataStored = [];
}
