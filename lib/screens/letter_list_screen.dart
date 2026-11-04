import 'package:flutter/material.dart';
import 'package:learn_arabic/data/letters.dart';
import 'package:learn_arabic/models/letter.dart';

class LetterListScreen extends StatelessWidget {
  const LetterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learn Arabic")),
      body: ListView.builder(
        itemCount: letterList.length,
        itemBuilder: (context, index) {
          final letter = letterList[index];
          return ListTile(
            leading: Text(letter.arabic, style: TextStyle(fontSize: 32)),
            title: Text(letter.name, style: TextStyle(fontSize: 32)),
            subtitle: Text("${letter.id}"),
          );
        },
      ),
    );
  }
}
