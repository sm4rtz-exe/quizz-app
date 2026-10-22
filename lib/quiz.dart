import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizzState();
}

class _QuizzState extends State<Quiz> {
  var activeScreen = 'start-screen';

  final List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onSlectedAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.black],
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
