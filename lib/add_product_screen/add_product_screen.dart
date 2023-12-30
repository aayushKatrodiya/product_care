import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:product_care/add_product_screen/class.dart';
import 'package:product_care/add_product_screen/model.class.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  List<SelectedItemCrud> dataStored = [];

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
            TextField(
              controller: AddProductClass.productNameController,
              decoration: const InputDecoration(
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
              controller: AddProductClass.dateSelectionController,
              decoration: const InputDecoration(
                filled: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    String name = AddProductClass.productNameController.text;
                    String date = AddProductClass.dateSelectionController.text;
                    // ImageProvider image=AddProductClass.file!;
                    if (name.isNotEmpty && date.isNotEmpty) {
                      setState(() {
                        SelectedItemCrud(
                          name: name, date: date,
                          // image: AddProductClass.file!.
                        );
                      });
                    }
                  },
                  child: const Text("Add Product"),
                ),
              ),
            ),
            dataStored.isEmpty
                ? const Center(child: Text("Their is no dataStored"))
                : Expanded(
                    child: ListView.builder(
                      itemCount: dataStored.length,
                      itemBuilder: (context, index) => getRow(index),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return ListTile(
      // leading: CircleAvatar(
      //   child: Image(
      //     image: AssetImage(dataStored[index].image.toString()),
      //   ),
      // ),
      title: Text(dataStored[index].name),
      subtitle: Text(dataStored[index].date),
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
        ),
      ),
    );
  }
}
