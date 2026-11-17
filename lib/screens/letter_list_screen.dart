import 'package:flutter/material.dart';
import 'package:learn_arabic/data/letters.dart';
import 'package:learn_arabic/screens/letter_detail_screen.dart';
import 'package:learn_arabic/screens/quiz_screen.dart';

class LetterListScreen extends StatelessWidget {
  const LetterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Arabic"),
        actions: [
          IconButton(
            tooltip: "Alıştırma",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuizScreen()),
              );
            },
            icon: const Icon(Icons.quiz),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: letterList.length,
        itemBuilder: (context, index) {
          final letter = letterList[index];
          return ListTile(
            leading: Text(letter.arabic, style: const TextStyle(fontSize: 32)),
            title: Text(letter.name, style: const TextStyle(fontSize: 32)),
            subtitle: Text("${letter.id}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LetterDetailScreen(letter: letter),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
