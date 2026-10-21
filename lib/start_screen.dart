import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'asset/quiz-logo.png',
            height: 250,
            color: const Color.fromARGB(182, 255, 255, 255),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Learn Flutter the fun way!",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight(800),
              ),
            ),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: Text("Start Quizz"),
          ),
        ],
      ),
    );
  }
}
