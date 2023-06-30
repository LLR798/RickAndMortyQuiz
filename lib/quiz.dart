import 'package:flutter/material.dart';
import 'package:rick_and_morty_quiz/answer_button.dart';
import 'package:rick_and_morty_quiz/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) toRespond;

  const Quiz({
    Key? key,
    required this.questions,
    required this.selectedQuestion,
    required this.toRespond,
  }) : super(key: key);

  bool get haveSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = haveSelectedQuestion
        ? questions[selectedQuestion]['answer'] as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Question(questions[selectedQuestion]['text'].toString()),
        SizedBox(
            width: 200,
            height: 150,
            child: Image.asset(questions[selectedQuestion]['image']
                .toString())), // Adicionando a imagem
        ...answers.map((answer) {
          return AnswerButton(
            answer['text'].toString(),
            () => toRespond(int.parse(answer['score'].toString())),
            isCorrect: answer['isCorrect'] as bool,
          );
        }).toList(),
      ],
    );
  }
}
