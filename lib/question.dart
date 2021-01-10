import 'package:flutter/cupertino.dart';

class question extends StatelessWidget {
  final String questiontext;

 question( this.questiontext);
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
