import 'package:flutter/material.dart';
import 'package:third_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          // Remove the const keyword here
          color1: Color.fromRGBO(115, 196, 215, 1),
          color2: Color.fromARGB(255, 155, 138, 139),
        ),
      ),
    ),
  );
}
