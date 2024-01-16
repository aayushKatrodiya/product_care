// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContainerSetting extends StatefulWidget {
  const ContainerSetting({super.key});

  @override
  State<ContainerSetting> createState() => _ContainerSettingState();
}

class _ContainerSettingState extends State<ContainerSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container setting")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _1stRow,
                _1stRow,
                _1stRow,
                _1stRow,
                _1stRow,
                _1stRow,
                _1stRow,
                _1stRow,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row get _1stRow {
    return Row(
      children: [
        Card(
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    _1stInerDetail(),
                  ],
                ),
              );
              setState(() {});
            },
            child: _1stContainer,
          ),
        ),
        const Gap(1),
        Card(
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    _2ndInerDetail(),
                  ],
                ),
              );
              setState(() {});
            },
            child: _2ndContainet,
          ),
        ),
      ],
    );
  }

  Padding _1stInerDetail() {
    return const Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aayush",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Expirey in 2 days",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Divider(color: Colors.black, height: 10, indent: 10),
          Text(
            "Expirey date:",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "20/01/2024",
            style: TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
              height: 90,
              width: 100,
              image: AssetImage("assets/image/Profile_image.jpg"),
            ),
          ),
        ],
      ),
    );
  }

  Padding _2ndInerDetail() {
    return const Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Google",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Expirey in 20 days",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Divider(color: Colors.black, height: 10, indent: 10),
          Text(
            "Expirey date:",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "20/11/2029",
            style: TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
              height: 90,
              width: 100,
              image: AssetImage("assets/image/Google_Logo.png"),
            ),
          ),
        ],
      ),
    );
  }

  Container get _1stContainer {
    return Container(
      height: 200,
      width: 178,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.05),
        borderRadius: BorderRadius.circular(1),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aayush",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Expirey in 2 days",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Divider(color: Colors.black, height: 10, indent: 10),
            Text(
              "Expirey date:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "20/01/2024",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                height: 90,
                width: 100,
                image: AssetImage("assets/image/Profile_image.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container get _2ndContainet {
    return Container(
      height: 200,
      width: 178,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.05),
        borderRadius: BorderRadius.circular(1),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Google",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Expirey in 20 days",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Divider(color: Colors.black, height: 10, indent: 10),
            Text(
              "Expirey date:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "20/11/2029",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                height: 90,
                width: 100,
                image: AssetImage("assets/image/Google_Logo.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
