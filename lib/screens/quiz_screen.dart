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
  Letter? _selected;

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
    _selected = null;
  }

  void _checkAnswer(Letter option) {
    if (_selected != null) return; // already answered, ignore further taps

    setState(() {
      _selected = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_question.arabic, style: const TextStyle(fontSize: 120)),
            for (final option in _options)
              ElevatedButton(
                onPressed: () => _checkAnswer(option),
                child: Text(option.name),
              ),

            // result text, only visible after an answer
            if (_selected != null)
              Text(
                _selected == _question ? 'Correct!' : 'Wrong!',
                style: const TextStyle(fontSize: 24),
              ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  _newQuestion();
                });
              },
              child: const Text('New Letter'),
            ),
          ],
        ),
      ),
    );
  }
}
