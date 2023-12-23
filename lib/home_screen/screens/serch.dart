import 'package:flutter/material.dart';

class SerchScreen extends StatefulWidget {
  const SerchScreen({super.key});

  @override
  State<SerchScreen> createState() => _SerchScreenState();
}

class _SerchScreenState extends State<SerchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: MaterialButton(
          onPressed: () {
            setState(() {});
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Serch Product",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.cancel_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      //Body
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "SerchScreen",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
