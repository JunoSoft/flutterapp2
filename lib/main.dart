import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: Column(
          children:const [
             Text('Who are you?'),
           TextButton(onPressed: null, child:Text("HOME"))
          ],
        ),
      ),
    );
  }
}
