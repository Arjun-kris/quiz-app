import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset(
          'assets/images/quiz-logo.png', 
          width: 300, 
          color: Colors.black,
        ),
        const SizedBox(height: 80),
        const Text('Quiz App', style: TextStyle(fontSize: 30)
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz, 
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            side: const BorderSide(
              color: Colors.black
            )
          ),
          icon: const Icon(Icons.arrow_right_alt, color: Colors.black),
          label: const Text('Start Quiz', style: TextStyle(color: Colors.black),
         ),
        )
       ],
      )
    );
  }
}
