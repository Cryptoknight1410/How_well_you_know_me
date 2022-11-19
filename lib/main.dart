import 'dart:io';
import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
import './quiz_over.dart';
import './quiz.dart';

void main() {
  var person1 = MyApp();
  runApp(person1);
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
   final questions = const [
      {'question':'What''s my name?',
      'answer':
      [{'text':'Khushi Hitesh Sanghvi Alpa','score':10},
      {'text':'Khushi Rajesh Sanghvi Harsha','score':-5},
      {'text':'Khushi Nimesh Mehta Alpa','score':-5},
      {'text':'Khushi Hitesh Mehta Alpa','score':-5}]},

      {'question':'My Favourite Food?',
      'answer':
      [{'text':'Momos','score':-5},
      {'text':'Burgers','score':-5},
      {'text':'Pav Bhaji','score':10},
      {'text':'Dont know','score':0}]},



       {'question':'What I will Prefer?',
      'answer':
      [{'text':'Coffee','score':10},
      {'text':'Tea','score':-5},
      {'text':'Milk','score':-5},
      {'text':'Juice','score':-5}]},

      {'question':'Season which is like the most?',
      'answer':
      [{'text':'Spring','score':10},
      {'text':'Rainy','score':-5},
      {'text':'Winter','score':-5},
      {'text':'Summer','score':-5}]},

      {'question':'Sport which I like the most?',
      'answer':
      [{'text':'Cricket','score':10},
      {'text':'Football','score':-5},
      {'text':'Chess','score':-5},
      {'text':'Badminton','score':-5}]},

      {'question':'Favourite type of Movies?',
      'answer':
      [{'text':'Romantic','score':-5},
      {'text':'Action Comedy','score':10},
      {'text':'Only Action','score':-5},
      {'text':'Horror','score':-5}]},

      {'question':'10th Std grades',
      'answer':
      [{'text':'90.56%','score':-5},
      {'text':'91.56%','score':-5},
      {'text':'95.56%','score':-5},
      {'text':'92.56%','score':10}]},

      {'question':'Places which I like to visit?',
      'answer':
      [{'text':'Mountains','score':10},
      {'text':'Beaches','score':-5},
      {'text':'PlayZone','score':-5},
      {'text':'Theaters','score':-5}]},

      
      
    ];
  int counter = 0;
  int totalscore=0;
  void answerchosen(int score) {
    if(counter < questions.length){
        print("This answer is chosen");
        
    setState(() {
      counter = counter + 1;
      totalscore+=score;
    });
    
  }
  }

  void reset(){
    setState(() {
      counter=0;
      totalscore=0;
    });



  }

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('How well do you know me?'),
            ),
            body:(counter < questions.length)? 
           Quiz(questions,counter,answerchosen):Quiz_Over(totalscore,reset)
            ) 
            );
  }
}
