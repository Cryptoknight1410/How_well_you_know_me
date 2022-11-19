import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final VoidCallback stateHandler;
  String answer;
  Answer(this.stateHandler,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top:15),
      child: ElevatedButton(
      
      // color: Colors.blue,
      child: Text(answer),
      onPressed: stateHandler,
    ));
  }
}
