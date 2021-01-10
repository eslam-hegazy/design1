import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final String answerquestion;
  final Function x;

  answer(this.answerquestion,this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
          child: Text(
            answerquestion,
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.red,
          onPressed: x),
    );
  }
}
