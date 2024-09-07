import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

const List<Color> colorGradient = [Color.fromARGB(255, 12, 15, 194), Color.fromARGB(255, 13, 6, 100)];
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorList: colorGradient,)
      ),
    ),
  );
}

