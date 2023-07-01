import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() onRestartQuiz;

  const Result(this.score, this.onRestartQuiz, {super.key});

  Map<String, dynamic> get resultData {
    if (score >= 0 && score <= 79) {
      return {
        'text': 'Precisa melhorar!',
        'image': 'assets/images/melhorar.png',
      };
    } else if (score >= 80 && score <= 129) {
      return {
        'text': 'Parabéns!',
        'image': 'assets/images/parabens.png',
      };
    } else if (score >= 130) {
      return {
        'text': 'Você foi foda!',
        'image': 'assets/images/foda.png',
      };
    } else {
      return {
        'text': 'Resultado inválido!',
        'image': 'assets/images/error.png',
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = resultData;

    final textWithScore =
        '${result['text']} Pontuação final: $score'; // Juntar o texto com a pontuação

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Text(
                textWithScore,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Container(
                margin: const EdgeInsets.only(top: 45.0, bottom: 35.0),
                child: Image.asset(
                  result['image'].toString(),
                  width: 300, // Define o tamanho desejado para a imagem
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: onRestartQuiz,
          child: const Text(
            'Reiniciar',
            style: TextStyle(
              color: Color(0xFF7000DA),
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
