import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  const Question(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 26),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
