import 'dart:io';

import 'package:flutter/material.dart';

class Quiz_Over extends StatelessWidget {
  final int totalscore;
  final VoidCallback reset;
  String get resultPhrase {
    String resultText ;
    if (totalscore <=20) {
      resultText = 'You dont know me ';
    }  else if(totalscore >20 && totalscore<=40){
      resultText = 'Know me partially well';
    }
    else{
      resultText = 'You know me very well';
    }

    return resultText;
  }

  Quiz_Over(this.totalscore, this.reset);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      alignment: Alignment.center,
      child: Column(children: [
        const Text('ThankYou for playing',
            style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 40,
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
        ElevatedButton  (
          
          
            child: Text('Return'),
            onPressed: reset),
        Text(resultPhrase ,style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        Text(totalscore.toString())
        
      ]),
    );
  }
}
