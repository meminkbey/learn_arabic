import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_arabic/data/letters.dart';
import 'package:learn_arabic/models/letter.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Letter _question;
  late List<Letter> _options;

  @override
  void initState() {
    super.initState();
    _newQuestion();
  }

  // Prepares a new question: 4 options, one of them is the answer.
  void _newQuestion() {
    final shuffled = List<Letter>.from(letterList)..shuffle();
    _options = shuffled.take(4).toList();
    _question = _options[Random().nextInt(_options.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quiz")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_question.arabic, style: const TextStyle(fontSize: 120)),
            for (final option in _options)
              ElevatedButton(onPressed: () {}, child: Text(option.name)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _newQuestion();
                });
              },
              child: const Text("New Letter"),
            ),
          ],
        ),
      ),
    );
  }
}
