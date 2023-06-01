import 'package:flutter/material.dart';

import 'start_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 56, 14, 170),
              Color.fromARGB(255, 164, 154, 197),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const StartContainer(),
      ),
    ),
  ));
}
