import 'dart:ui';

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  var questions;
  Questions(this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
        questions,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        
      ),
    );
  }
}
