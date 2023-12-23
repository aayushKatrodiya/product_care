import 'package:flutter/material.dart';
import 'package:product_care/grid_use/gridviewmap.dart';

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        // shrinkWrap: ,
        // scrollDirection: ,
        // reverse: ,
        // physics: ,
        // padding: ,
        // keyboardDismissBehavior: ,
        // dragStartBehavior: ,
        // clipBehavior: ,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          // mainAxisExtent: 200,
          childAspectRatio: 1,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => Container(
          color: Colors.purple.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                gridViewData[index]['icon'],
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                gridViewData[index]['text'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        itemCount: gridViewData.length,
      ),
    );
  }
}
