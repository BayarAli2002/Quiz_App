import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;
  final Color textColor;
  Question(this.questiontext,this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: double.infinity,
      margin: EdgeInsets.only(top: 100),
      child: Text(
        questiontext,
        style: TextStyle(
          color: textColor,
          fontSize: 30,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
