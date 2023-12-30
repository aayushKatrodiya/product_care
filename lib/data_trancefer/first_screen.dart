import 'package:flutter/material.dart';
import 'package:product_care/data_trancefer/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController fNameController = TextEditingController();
  TextEditingController mNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("fromeTranfer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Enter User Name",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: fNameController,
              decoration: const InputDecoration(
                label: Text("First Name*"),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: mNameController,
              decoration: const InputDecoration(
                label: Text("Middle Name*"),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: lNameController,
              decoration: const InputDecoration(
                label: Text("Last Name*"),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                String fName = fNameController.text;
                String mName = mNameController.text;
                String lName = lNameController.text;
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondScreen2(
                        fName: fName,
                        mName: mName,
                        lName: lName,
                      ),
                    ),
                  );
                });
              },
              child: const Text("Tape To Show Another Page"),
            )
          ],
        ),
      ),
    );
  }
}
