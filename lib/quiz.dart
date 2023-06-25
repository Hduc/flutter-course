import 'package:app_one/data/questions.dart';
import 'package:app_one/quetionsScreen.dart';
import 'package:app_one/start_container.dart';
import 'package:flutter/material.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';
  
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  } 

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers=[];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartContainer(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    else
    screenWidget = StartContainer(switchScreen);
    
    return MaterialApp(
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
            child: screenWidget,
        ),
      ),
    );
  }
}
