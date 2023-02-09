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
      child:ElevatedButton(onPressed: selectHandler,style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 92, 1, 31)), child:Text(answerText)),
    );
  }
}