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
            leading: CircleAvatar(
              child: Text(Check.myTest[index]['fname'][0]),
            ),
            title: Row(
              children: [
                Text(Check.myTest[index]['fname']),
                const SizedBox(width: 5),
                Text(Check.myTest[index]['mname']),
                const SizedBox(width: 5),
                Text(Check.myTest[index]['lname']),
              ],
            ),
            subtitle: Text(Check.myTest[index]['town']),
            trailing: Text(Check.myTest[index]['time'].toString()),
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
      "town": "Garden velly",
      "time": 2.13
    },
    {
      'no.': 2,
      "fname": 'Vinay',
      "mname": 'Jitubhai',
      "lname": 'Katrodiya',
      "town": "Twine tower",
      "time": 4.45
    },
    {
      'no.': 1,
      "fname": 'Anshu',
      "mname": 'VishnuBhai',
      "lname": 'Kheni',
      "town": "Kailasa tower",
      "time": 7.33
    },
  ];
}
