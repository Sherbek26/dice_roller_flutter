import 'package:flutter/material.dart';
import 'package:just/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: DecorationContainer(colors: [
        Color.fromARGB(255, 255, 255, 255),
        Color.fromARGB(153, 56, 55, 55),
      ]),
    ),
  ));
}
