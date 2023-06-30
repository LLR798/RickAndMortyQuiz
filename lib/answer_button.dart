import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  final String text;
  final void Function() onSelected;
  final bool isCorrect;

  const AnswerButton(
    this.text,
    this.onSelected, {
    Key? key,
    required this.isCorrect,
  }) : super(key: key);

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  Color buttonColor = const Color(0xFF11B0C8);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          onPressed: () {
            setState(() {
              buttonColor = widget.isCorrect ? Colors.green : Colors.red;
            });
            widget.onSelected();
            Future.delayed(const Duration(milliseconds: 600), () {
              if (mounted) {
                setState(() {
                  buttonColor = const Color(0xFF11B0C8);
                });
              }
            });
          },
          child: Text(widget.text),
        ),
      ),
    );
  }
}
