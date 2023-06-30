import 'package:flutter/material.dart';
import 'package:rick_and_morty_quiz/quiz.dart';
import 'package:rick_and_morty_quiz/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de map com as perguntas e as respostas:
final List<Map<String, Object>> _questions = [
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/Rick.png',
    'answer': [
      {'text': 'Rick', 'score': 10, 'isCorrect': true},
      {'text': 'Jerry', 'score': 0, 'isCorrect': false},
      {'text': 'Morty', 'score': 0, 'isCorrect': false},
      {'text': 'Alexander', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome dessa personagem?',
    'image': 'assets/images/Annie.png',
    'answer': [
      {'text': 'Beth', 'score': 0, 'isCorrect': false},
      {'text': 'Annie', 'score': 10, 'isCorrect': true},
      {'text': 'Summer', 'score': 0, 'isCorrect': false},
      {'text': 'Arthricia', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/BabyPoopybutthole.png',
    'answer': [
      {'text': 'Baby Wizard', 'score': 0, 'isCorrect': false},
      {'text': 'Baby Poopybutthole', 'score': 10, 'isCorrect': true},
      {'text': 'Baby Legs', 'score': 0, 'isCorrect': false},
      {'text': 'Morty Jr', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome dessa personagem?',
    'image': 'assets/images/Beth.png',
    'answer': [
      {'text': 'Beebo', 'score': 0, 'isCorrect': false},
      {'text': 'Blim Blam', 'score': 0, 'isCorrect': false},
      {'text': 'Blamph', 'score': 0, 'isCorrect': false},
      {'text': 'Beth', 'score': 10, 'isCorrect': true},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/EvilMorty.png',
    'answer': [
      {'text': 'Evil Morty', 'score': 10, 'isCorrect': true},
      {'text': 'Morty', 'score': 0, 'isCorrect': false},
      {'text': 'Alien Morty', 'score': 0, 'isCorrect': false},
      {'text': 'Antenna Morty', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/Glootie.png',
    'answer': [
      {'text': 'Amish Cyborg', 'score': 0, 'isCorrect': false},
      {'text': 'Alien Googah', 'score': 0, 'isCorrect': false},
      {'text': 'Glootie', 'score': 10, 'isCorrect': true},
      {'text': 'Alan Rails', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/Jerry.png',
    'answer': [
      {'text': 'Jerry', 'score': 10, 'isCorrect': true},
      {'text': 'Agency Director', 'score': 0, 'isCorrect': false},
      {'text': 'Armothy', 'score': 0, 'isCorrect': false},
      {'text': 'Benjamin', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/Morty.png',
    'answer': [
      {'text': 'Artist Morty', 'score': 0, 'isCorrect': false},
      {'text': 'Big Head Morty', 'score': 0, 'isCorrect': false},
      {'text': 'Morty', 'score': 10, 'isCorrect': true},
      {'text': 'Big Morty', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/MrMeeseeks.png',
    'answer': [
      {'text': 'Blue Diplomat', 'score': 0, 'isCorrect': false},
      {'text': 'Brad', 'score': 0, 'isCorrect': false},
      {'text': 'Mr. Meeseeks', 'score': 10, 'isCorrect': true},
      {'text': 'Blue Footprint Guy', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/PickleRick.png',
    'answer': [
      {'text': 'Antenna Rick', 'score': 0, 'isCorrect': false},
      {'text': 'Pickle Rick', 'score': 10, 'isCorrect': true},
      {'text': 'Alien Rick', 'score': 0, 'isCorrect': false},
      {'text': 'Aqua Rick', 'score': 0, 'isCorrect': false},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/Summer.png',
    'answer': [
      {'text': 'Creepy Little Girl', 'score': 0, 'isCorrect': false},
      {'text': 'Evil Summer Clone', 'score': 0, 'isCorrect': false},
      {'text': 'Goddess Beth', 'score': 0, 'isCorrect': false},
      {'text': 'Summer', 'score': 10, 'isCorrect': true},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/TickTock.png',
    'answer': [
      {'text': 'Borpocian', 'score': 0, 'isCorrect': false},
      {'text': 'Colossus', 'score': 0, 'isCorrect': false},
      {'text': 'Dr. Glip-Glop', 'score': 0, 'isCorrect': false},
      {'text': 'Tick Tock', 'score': 10, 'isCorrect': true},
    ],
  },
  {
    'text': 'Qual o nome desse personagem?',
    'image': 'assets/images/TruthTortuise.png',
    'answer': [
      {'text': 'Boobloosian', 'score': 0, 'isCorrect': false},
      {'text': 'Truth Tortuise', 'score': 10, 'isCorrect': true},
      {'text': 'Hookah Alien', 'score': 0, 'isCorrect': false},
      {'text': 'Calypso', 'score': 0, 'isCorrect': false},
    ],
  },
];

  // Pontucao total:
  var _totalScore = 0;

  // Index da aplicacao:
  var _selectedQuestion = 0;

  // Método para modificar o estado:
  void _toRespond(int score) {
    if (haveSelectedQuetion) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }
  }

  // Método para reiniciar o questionário:
  void _restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
  }

  // Saber se tem perguntas restantes:
  bool get haveSelectedQuetion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF87f54e),
          title: const Text(
            'Rick And Morty Quiz',
            style: TextStyle(
                color: Color(0xFF11b0c8),
                fontWeight: FontWeight.bold,
                fontSize: 28),
          ),
        ),
        body: haveSelectedQuetion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                toRespond: _toRespond,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}