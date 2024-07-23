import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;
  final Color textColor;
  Question(this.questiontext,this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 8, 0,8),
      width: double.infinity,
      margin: EdgeInsets.only(top: 80),
      child: Text(
        questiontext,
        style: TextStyle(
          color: textColor,
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
          shadows: <Shadow>[
            Shadow(
              color: Colors.deepPurpleAccent,
              offset: Offset(2, 2),
              blurRadius: 5,
            ),
            Shadow(
              color: Colors.deepPurpleAccent,
              offset: Offset(1, 1),
              blurRadius: 5,
            ),

          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
