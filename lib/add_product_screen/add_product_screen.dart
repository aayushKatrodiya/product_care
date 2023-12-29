import 'dart:developer';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:product_care/add_product_screen/class.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController timeSetting = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _uplodImageSegment(context),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Name*",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Expirey date*",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DateTimePicker(
              // initialValue: DateTime.now().toString(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
              controller: timeSetting,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              // dateLabelText: 'Enter Exirey Date*',
              // style: const TextStyle(),
              // icon: const Icon(Icons.event),
              // onChanged: (val) => log(val),
              // validator: (val) {
              //   log(val.toString());
              //   return null;
              // },
              // onSaved: (val) => log(val.toString()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text("Add Product"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Text("Add Product"),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
    );
  }

  GestureDetector _uplodImageSegment(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Pick Image'),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        AddProductClass.selectImageFromGallary();
                      });
                    },
                    child: const Text('gallary'),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          AddProductClass.selectImageFromCamera();
                        });
                      },
                      child: const Text('camara')),
                ],
              );
            },
          );
        });
      },
      child: Container(
          height: 200,
          width: 320,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AddProductClass.file != null
                  ? FileImage(AddProductClass.file!)
                  : const AssetImage("assets/image/uplodImage.png")
                      as ImageProvider,
            ),
          )),
    );
  }
}
// DottedBorder(
//               borderType: BorderType.RRect,
//               radius: const Radius.circular(20),
//               dashPattern: const [10, 5],
//               padding: const EdgeInsets.all(6),
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.all(Radius.circular(12)),
//                 child: Container(
//                   height: 200,
//                   width: 320,
//                   color: Colors.white,
//                   child: Center(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             setState(() {
//                               AddProductClass.selectImageFromGallary();
//                             });
//                           },
//                           icon: const Icon(Icons.image),
//                         ),
//                         const Text(
//                           "Upload or take image",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
            