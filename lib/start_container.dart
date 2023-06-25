import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartContainer extends StatelessWidget {
  const StartContainer(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // để nội dung ở trung tâm
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          //  Opacity(// thẻ làm mở hình
          //   opacity: 0.6,
          //     child: Image.asset(
          //       'assets/images/quiz-logo.png',
          //       width: 300,
          //     ),
          //   ),
          const SizedBox(height: 80), //tạo ra 1 ô trống để cách dòng
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
