import 'package:app_one/style_text.dart';
import 'package:flutter/material.dart';

import 'dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
 const GradientContainer(this.color1, this.color2,
      {super.key}); // là viết gon cho dòng dưới
  //GradientContainer({key}):super(key: key);//constructor

 const GradientContainer.purple({super.key}) // Khởi tạo giá trị mặc định
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;
  final Color color1;
  final Color color2;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        // là màu nên nhưng co chuyển màu
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:const Center(
        child: DiceRoller()
      ),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer({
//     super.key,
//     required this.colors,
//   }); // là viết gon cho dòng dưới
//   //GradientContainer({key}):super(key: key);//constructor
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         // là màu nên nhưng co chuyển màu
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello world!'),
//       ),
//     );
//   }
// }
