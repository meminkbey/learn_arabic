import 'package:flutter/material.dart';

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
        body: const Center(child: Text('ب', style: TextStyle(fontSize: 120))),
      ),
    );
  }
}
