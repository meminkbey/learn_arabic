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

  @override
  void initState() {
    super.initState();
    _pickRandomLetter();
  }

  //Picks a random letter as the current question
  void _pickRandomLetter() {
    _question = letterList[Random().nextInt(letterList.length)];
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
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _pickRandomLetter();
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
