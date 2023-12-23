import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String profileImage = "assets/image/Profile_image.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _apBar(context),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("ProductScreen"),
          ],
        ),
      ),
    );
  }

  AppBar _apBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.settings_outlined,
        color: Colors.black,
        size: 30,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GestureDetector(
            onTap: () {
              setState(() {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: FittedBox(
                        child: Image(
                          image: AssetImage(profileImage),
                        ),
                      ),
                    );
                  },
                );
              });
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(profileImage),
            ),
          ),
        ),
      ],
    );
  }
}
