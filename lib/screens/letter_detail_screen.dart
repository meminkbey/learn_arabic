import 'package:flutter/material.dart';
import 'package:learn_arabic/models/letter.dart';

class LetterDetailScreen extends StatelessWidget {
  final Letter letter;
  const LetterDetailScreen({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(letter.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(letter.arabic, style: const TextStyle(fontSize: 120)),
            Text(letter.name, style: const TextStyle(fontSize: 32)),
          ],
        ),
      ),
    );
  }
}
