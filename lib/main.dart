import 'package:flutter/material.dart';
import 'package:rick_and_morty_quiz/pages/home_page.dart';
import 'package:rick_and_morty_quiz/pages/splash_page.dart';

void main() {
  runApp(const MyQuizApp());
}

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick And Morty Quiz',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashPage',
      routes: {
        '/splashPage' : (context) => const SplashPage(),
        '/homePage' : (context) => const HomePage(),
      },
    );
  }
}