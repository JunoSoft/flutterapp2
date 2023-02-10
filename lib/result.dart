import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result({required this.resultScore, super.key});
   var resultText  ='nothing is there';
String get resultPhrase{
  if(resultScore<=8){
  resultText  = 'you are too Bad';
}
else if(resultScore<=20){
 resultText  = 'you are good for sure';
}
else{
   resultText  = 'no classed';
}
return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(resultPhrase,
            style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold)));
  }
}
