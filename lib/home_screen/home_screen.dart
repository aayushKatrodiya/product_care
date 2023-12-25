import 'package:flutter/material.dart';
import 'package:product_care/home_screen/screens/history.dart';
import 'package:product_care/home_screen/screens/product.dart';
import 'package:product_care/home_screen/screens/serch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curentTab = 0;
  final List<Widget> screns = [
    const ProductScreen(),
    const HistoryScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const ProductScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _appBar(context),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addProductPage");
          const SerchScreen();
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          decoration: const BoxDecoration(),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const ProductScreen();
                    curentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.paste_rounded,
                      color: curentTab == 0 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Product",
                      style: TextStyle(
                        color: curentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 50),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const HistoryScreen();
                    curentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.history,
                      color: curentTab == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "History",
                      style: TextStyle(
                        color: curentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // AppBar _appBar(BuildContext context) {
  //   return AppBar(
  //     title: const Text("Veriprod"),
  //     actions: [
  //       IconButton(
  //         onPressed: () {
  //           Navigator.pushNamed(context, "/serchScreen");
  //         },
  //         icon: const Icon(Icons.search),
  //       ),
  //     ],
  //   );
  // }
}
