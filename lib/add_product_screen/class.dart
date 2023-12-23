import 'dart:io';

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
}
