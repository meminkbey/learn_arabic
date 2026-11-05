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
            const SizedBox(height: 40),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFormBox('Tek', letter.isolated),
                  _buildFormBox('Başta', letter.initial),
                  _buildFormBox('Ortada', letter.medial),
                  _buildFormBox('Sonda', letter.finalForm),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Shows one positional form with its label underneath
  Widget _buildFormBox(String label, String form) {
    return Column(
      children: [
        Text(form, style: const TextStyle(fontSize: 40)),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
