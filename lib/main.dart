import 'package:flutter/material.dart';
import 'package:learn_arabic/data/letters.dart';

import 'models/letter.dart';

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
            letterList[0].arabic,
            style: const TextStyle(fontSize: 60, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
