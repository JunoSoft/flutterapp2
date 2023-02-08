import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question, {super.key});

  @override
  Widget build(BuildContext context){
    // ignore: sized_box_for_whitespace
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          question,
          style: const TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
