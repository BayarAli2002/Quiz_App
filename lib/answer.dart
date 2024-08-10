import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function()? onpressed;
  final Color textColor;

  Answer(this.onpressed, this.answerText, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
//Each Controll can take full width if only it's inside a Container
      width: double.infinity,
      child: TextButton(
          onPressed: onpressed,
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(
                color: Colors.black,
                width: 3,
              ),
            ),
          ),
          child: Text(
            answerText,
            style: TextStyle(
              color: textColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          )),
      margin: EdgeInsets.only(top: 35),
    );
  }
}
