import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorList, {super.key});

  final List<Color> colorList;

  void StartQuiz() {
    print("Changing.....");
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
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
            const Text(
              "Learn Fluter the fun way!",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 210, 169, 243)),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: StartQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 210, 169, 243),
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  backgroundColor: Color.fromARGB(255, 128, 56, 170)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
