import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz; //calling a function
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz_logo.png",
            width: 300,
            color: const Color.fromARGB(255, 220, 206, 206),
          ),
          // Opacity(// avoid using opacity if possible
          //   opacity: 0.4,
          //   child: Image.asset(
          //     "assets/images/quiz_logo.png",
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Learn Flutter the Fun Way",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            //to add icon in button
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
