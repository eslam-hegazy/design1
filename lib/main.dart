import 'package:app9/answer.dart';
import 'package:app9/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return home();
  }
}

class home extends State<app> {
  int questionindex = 0;

  void answerquestion() {
    if(questionindex==1){
      questionindex=-1;
    }
    setState(() {
      questionindex += 1;
    });
    print("answer shozen !!");
    print(questionindex);
  }

  final questionapp = [
    {
      "questionText":"What's Your Favorite Color ?!",
      "answer":["BLACK","GREEN","BLUE","YELLOW"]
    },
    {
      "questionText":"What's Your Favorite Color ?!",
      "answer":["BLACK","GREEN","BLUE","YELLOW"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "welcome",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz Your Information In Programming !!"),
          centerTitle: true,
          backgroundColor: Colors.purple,
          shadowColor: Colors.white70,
        ),
        body: Column(
          children: [
            question(questionapp[questionindex]['questionText']),
            
            answer("answer1", answerquestion),
            answer("answer2", answerquestion),
            answer("answer3", answerquestion),
          ],
        ),
      ),
    );
  }
}
