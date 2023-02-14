import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuestion;
  Result({required this.resultScore,required this.resetQuestion, super.key});
  var resultText = 'nothing is there';
  String get resultPhrase {
    if (resultScore <= 8) {
      resultText = 'you are too Bad';
    } else if (resultScore <= 20) {
      resultText = 'You are good for sure';
    } else {
      resultText = 'Not Important';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(resultPhrase,
          style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
      TextButton(onPressed:resetQuestion, child:const Text('Restart Quiz'))
    ]));
  }
}
