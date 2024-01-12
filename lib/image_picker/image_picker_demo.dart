import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({super.key});

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File? file;

  // Future<void> selectImageFromGallary(ImageSource source) async {
  //   ImagePicker pickImageData = ImagePicker();
  //   XFile? xFile = await pickImageData.pickImage(source: source);
  //   file = xFile != null ? File(xFile.path) : null;
  //   setState(() {});
  // }

  Future<void> selectImage(ImageSource source) async {
    ImagePicker pickImageData = ImagePicker();
    XFile? xFile = await pickImageData.pickImage(source: source);
    file = xFile != null ? File(xFile.path) : null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 180,
              backgroundImage: file != null
                  ? FileImage(file!)
                  : const NetworkImage(
                      'https://images.pexels.com/photos/10566898/pexels-photo-10566898.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                    ) as ImageProvider,
            ),
            MaterialButton(
              color: Colors.purple.shade100,
              onPressed: () {
                selectImage(ImageSource.gallery);
                setState(() {});
              },
              child: const Text('Upload From Gallry'),
            ),
            MaterialButton(
              color: Colors.purple.shade100,
              onPressed: () {
                selectImage(ImageSource.camera);
                setState(() {});
              },
              child: const Text('Take Picture'),
            ),
          ],
        ),
      ),
    );
  }
}
