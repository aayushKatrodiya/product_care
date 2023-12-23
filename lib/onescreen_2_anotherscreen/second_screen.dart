import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  String name, phone, email;

  SecondScreen(
      {super.key,
      required this.name,
      required this.phone,
      required this.email});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
