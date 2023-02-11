import 'package:flutter/material.dart';
import './Question.dart';
import './ansuer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuestions() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What your favolite color',
        'answer': [
          {'text': 'Red', 'score': 10},
          {'text': 'Blue', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'questionText': 'What is Your name?',
        'answer': [
          {'text': 'Albert', 'score': 5},
          {'text': 'Juno', 'score': 2},
          {'text': 'Max', 'score': 2},
          {'text': 'Didier', 'score': 1}
        ]
      },
      {
        'questionText': 'Where do you live',
        'answer': [
          {'text': 'Snake', 'score': -10},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 5},
          {'text': 'Flog', 'score': 1}
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions)
            : Result(resultScore: _totalScore, resetQuestion: _resetQuestions),
      ),
    );
  }
}
