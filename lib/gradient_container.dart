import 'package:app_one/style_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key}); // là viết gon cho dòng dưới
  //GradientContainer({key}):super(key: key);//constructor
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        // là màu nên nhưng co chuyển màu
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 56, 14, 170),
            Color.fromARGB(255, 164, 154, 197),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
