import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Check.myTest.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Text(Check.myTest[index]['fname']),
                const SizedBox(width: 5),
                Text(Check.myTest[index]['mname']),
                const SizedBox(width: 5),
                Text(Check.myTest[index]['lname']),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Check {
  static List<Map<String, dynamic>> myTest = [
    {
      'no.': 1,
      "fname": 'Aayush',
      "mname": 'Vinubhai',
      "lname": 'Katrodiya',
    },
    {
      'no.': 2,
      "fname": 'Vinay',
      "mname": 'Jitubhai',
      "lname": 'Katrodiya',
    },
    {
      'no.': 1,
      "fname": 'Anshu',
      "mname": 'VishnuBhai',
      "lname": 'Kheni',
    },
  ];
}
