import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  // void StartQuiz() {
  //   print("Changing.....");
  // }
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 500,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Learn Fluter the fun way!",
            style: GoogleFonts.lato(
                fontSize: 30, color: const Color.fromARGB(255, 210, 169, 243)),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 210, 169, 243),
                textStyle: const TextStyle(
                  fontSize: 24,
                ),
                backgroundColor: const Color.fromARGB(255, 128, 56, 170)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
