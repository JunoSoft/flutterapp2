import 'package:flutter/material.dart';
import './Question.dart';
import './ansuer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;
  const Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Ansuer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
