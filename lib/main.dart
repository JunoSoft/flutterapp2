import 'package:flutter/material.dart';
import './Question.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  var questionIndex = 0;
  void answerQuestion(){
    setState(() { 
    questionIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var questions =["What do you want ?","What your favolite color","No more questions"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: Column(
          children:[
           Question(questions[questionIndex]),
           ElevatedButton(onPressed:answerQuestion, child:const Text("Button 1")),
           ElevatedButton(onPressed: answerQuestion, child:const Text("Button 2")),
           ElevatedButton(onPressed: answerQuestion, child:const Text("Button 3")),
           ElevatedButton(onPressed: answerQuestion, child:const Text("Button 4")),
          ],
        ),
      ),
    );
  }
}
