import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Ansuer extends StatelessWidget {
  final VoidCallback selectHandler;
  Ansuer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: const EdgeInsets.all(10),
      child:ElevatedButton(onPressed: selectHandler, child:const Text("Button 1")),
    );
  }
}