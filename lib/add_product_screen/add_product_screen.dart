import "package:date_time_picker/date_time_picker.dart";
import "package:flutter/material.dart";
import "package:product_care/add_product_screen/class.dart";

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  void dispose() {
    AddProductClass.productNameController.dispose();
    AddProductClass.uriController.dispose();
    AddProductClass.dateSelectionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // _uplodImageSegment(context),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "URI*",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: AddProductClass.uriController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
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
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: ElevatedButton(
                    onPressed: AddProductClass.isUpdate
                        ? () {
                            AddProductClass
                                    .dataStored[AddProductClass.selectedIndex]
                                ["uri"] = AddProductClass.uriController.text;
                            AddProductClass.dataStored[
                                    AddProductClass.selectedIndex]["name"] =
                                AddProductClass.productNameController.text;
                            AddProductClass.dataStored[
                                    AddProductClass.selectedIndex]["date"] =
                                AddProductClass.dateSelectionController.text;

                            AddProductClass.isUpdate = false;

                            AddProductClass.uriController.clear();
                            AddProductClass.productNameController.clear();
                            AddProductClass.dateSelectionController.clear();

                            setState(() {});
                          }
                        : () {
                            AddProductClass.dataStored.add({
                              "uri": AddProductClass.uriController.text,
                              "name":
                                  AddProductClass.productNameController.text,
                              "date":
                                  AddProductClass.dateSelectionController.text,
                            });
                            AddProductClass.uriController.clear();
                            AddProductClass.productNameController.clear();
                            AddProductClass.dateSelectionController.clear();

                            setState(() {});
                          },
                    child: Text(
                        AddProductClass.isUpdate ? "Update" : "Add Product"),
                  ),
                ),
              ),
              AddProductClass.dataStored.isEmpty
                  ? const Center(child: Text("Their is no dataStored"))
                  : Expanded(
                      child: ListView.builder(
                        itemCount: AddProductClass.dataStored.length,
                        itemBuilder: (context, index) {
                          return listTile(index);
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listTile(int index) {
    return GestureDetector(
      onTap: () {
        AddProductClass.selectedIndex = index;
        AddProductClass.uriController.text =
            AddProductClass.dataStored[index]["uri"];
        AddProductClass.productNameController.text =
            AddProductClass.dataStored[index]["name"];
        AddProductClass.dateSelectionController.text =
            AddProductClass.dataStored[index]["date"];
        AddProductClass.isUpdate = true;
        setState(() {});
      },
      child: Container(
        height: 200,
        width: 10,
        color: Colors.black12,
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                AddProductClass.dataStored[index]["uri"],
              ),
            ),
            Text(AddProductClass.dataStored[index]["name"]),
            Text(AddProductClass.dataStored[index]["date"])
          ],
        ),
      ),
      // leading: CircleAvatar(
      //   backgroundColor: Colors.white,
      //   backgroundImage: NetworkImage(
      //     AddProductClass.dataStored[index]["uri"],
      //   ),
      // ),
      // title: Text(AddProductClass.dataStored[index]["name"]),
      // trailing: Text(AddProductClass.dataStored[index]["date"]),
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
                title: const Text("Pick Image"),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        AddProductClass.selectImageFromGallary();
                      });
                    },
                    child: const Text("gallary"),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          AddProductClass.selectImageFromCamera();
                        });
                      },
                      child: const Text("camara")),
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
