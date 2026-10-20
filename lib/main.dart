import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('asset/quiz-logo.png', height: 300),
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
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Start Quizz",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
