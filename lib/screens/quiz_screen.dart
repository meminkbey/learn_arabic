import 'package:flutter/material.dart';
import 'package:learn_arabic/data/letters.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alıştırma")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(letterList[1].arabic, style: const TextStyle(fontSize: 120)),
          ],
        ),
      ),
    );
  }
}
