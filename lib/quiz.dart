import 'package:flutter/material.dart';
import 'package:advance_project/gradient_container.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key})

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}


class _QuizState extends State<Quiz> {


  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
            Color.fromARGB(255, 44, 23, 139),
          ]),
      ),
    );
    
  }

}