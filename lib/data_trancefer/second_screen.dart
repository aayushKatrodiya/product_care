import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen2 extends StatelessWidget {
  String fName, mName, lName;

  SecondScreen2({
    super.key,
    required this.fName,
    required this.mName,
    required this.lName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("toTransfer"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Their is user's FName : $fName"),
            Text("Their is user's MName : $mName"),
            Text("Their is user's LName : $lName"),
          ],
        ),
      ),
    );
  }
}
