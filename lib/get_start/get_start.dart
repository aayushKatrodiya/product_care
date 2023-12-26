import 'package:flutter/material.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 117, 55, 55),
      body:
          //Pading (top:80)
          SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Veriprod helps to\nkeep track of your\nproducts's validity.",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // const SizedBox(height: 230),
              const CircleAvatar(
                radius: 150,
                backgroundColor: Colors.transparent,
                child: Image(
                  image: AssetImage("assets/image/Google_Logo.png"),
                ),
              ),
              // const SizedBox(height: 230),
              Row(
                children: [
                  const SizedBox(width: 20),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/homePage");
                      setState(() {});
                    },
                    child: Container(
                      height: 60,
                      width: 330,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          'Get Start  ➔',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
