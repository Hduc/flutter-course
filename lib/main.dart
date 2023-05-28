import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        Color.fromARGB(255, 56, 14, 170),
        Color.fromARGB(255, 164, 154, 197),
      )),
    ),
  );
}
