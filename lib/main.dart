import 'package:flutter/material.dart';
import './Question.dart';
import 'ansuer.dart';

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
        body: Column(
          children: [
            Question((questions[_questionIndex]['questionText']).toString()),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer){ 
              return Ansuer(_answerQuestion,answer);
            }).toList()
        
          ],
        ),
      ),
    );
  }
}
