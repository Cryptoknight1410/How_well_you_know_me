import 'dart:ffi';
import './main.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
 var questions;

 var  counter;
 var answerchosen; 
Quiz(this.questions,this.counter,this.answerchosen);
  @override
  Widget build(BuildContext context) {
    return  Column(
              children: <Widget>[
                Questions(questions[counter]["question"] as String),
                ...(questions[counter]["answer"] as List<Map<String,Object>>).map((answer){
                  return Answer((()=>answerchosen(answer['score'])) ,answer['text'] as String);
                  
                }).toList()
               
              ],
            );
  }
}   