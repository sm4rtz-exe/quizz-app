import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSlectedAnswer});

  final void Function(String answer) onSlectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreen();
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSlectedAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  void back() {
    setState(() {
      currentQuestionIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.sarabun(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return ElevatedButton(
                onPressed: () {
                  answerQuestion(answer);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  answer,
                  style: GoogleFonts.sarabun(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              );
            }),
            ElevatedButton(
              onPressed: back,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                "Back",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
