import 'package:flutter/material.dart';

Widget emailPassWord({
  required String text,
}) =>
    Container(
      height: 60,
      width: 333,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 13),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
