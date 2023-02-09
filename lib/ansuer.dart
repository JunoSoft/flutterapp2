import 'package:flutter/material.dart';

class Ansuer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Ansuer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: const EdgeInsets.all(10),
      child:ElevatedButton(onPressed: selectHandler, child:Text(answerText)),
    );
  }
}