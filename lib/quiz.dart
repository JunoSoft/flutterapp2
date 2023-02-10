import 'package:flutter/material.dart';
import './Question.dart';
import './ansuer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
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
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Ansuer(()=>answerQuestion(answer['score'] ), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
