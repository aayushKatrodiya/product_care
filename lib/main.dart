import 'package:flutter/material.dart';
import 'package:product_care/add_product_screen/add_product_screen.dart';
import 'package:product_care/home_screen/home_screen.dart';
import 'package:product_care/home_screen/screens/product.dart';
import 'package:product_care/home_screen/screens/serch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: const ProductScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/homePage": (context) => const HomeScreen(),
        "/addProductPage": (context) => const AddProductScreen(),
        "/serchScreen": (context) => const SerchScreen(),
      },
    );
  }
}
