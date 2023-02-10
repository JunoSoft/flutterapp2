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
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What your favolite color',
        'answer': ['Red', 'Blue', 'Green', 'White']
      },
      {
        'questionText': 'What is Your name?',
        'answer': ['Albert', 'Juno', 'MAx', 'Didier']
      },
      {
        'questionText': 'Where do you live',
        'answer': ['Kimironko', 'Gatsata', 'Kacyiru']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex<questions.length? Quiz(answerQuestion:_answerQuestion,questionIndex:_questionIndex,questions:questions):const Result(),
      ),
    );
  }
}
