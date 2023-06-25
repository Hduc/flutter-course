import 'package:app_one/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What are the main building of Fultter UIs?',
    ['Widgets', 'Components', 'Blocks', 'Functions'],
  ),
  QuizQuestion(
    "How are Flutter UIs built?",
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for IOS and Android Studio for Android',
    ],
  ),
  QuizQuestion("What\'s the purpose of a StatefullWidget?",[
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does note depend '
  ])
];
