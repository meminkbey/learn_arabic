import 'package:flutter/material.dart';

import 'models/letter.dart';

const ba = Letter(id: 2, arabic: 'ب', name: 'Ba');

// Entry point of the app. Flutter calls main() first.
void main() {
  runApp(const LearnArabicApp());
}

// Root widget of the app. It has no changing data, so it is stateless.
class LearnArabicApp extends StatelessWidget {
  const LearnArabicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Arabic',
      home: Scaffold(
        appBar: AppBar(title: const Text('Learn Arabic')),
        body: Center(
          child: Text(
            ba.arabic,
            style: const TextStyle(fontSize: 60, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
