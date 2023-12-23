import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:product_care/grid_use/gridviewmap.dart';

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 3,
        scrollDirection: Axis.vertical,
        childAspectRatio: 1,
        clipBehavior: Clip.hardEdge,
        dragStartBehavior: DragStartBehavior.start,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        padding: const EdgeInsets.all(8),
        physics: const ScrollPhysics(),
        reverse: true,
        shrinkWrap: true,
        primary: true,
        children: List.generate(
          gridViewData.length,
          (index) => Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  gridViewData[index]["icon"],
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
        ),
      ),
    );
  }
}
