import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
final List<Map<String, Object>> question;
final int  questionindex;
final void Function(int) answerQuestion;
final Color textColor;
Quiz(this.question,this.questionindex,this.answerQuestion,this.textColor);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionindex]['questionText'] as String,textColor),
        ...(question[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=>answerQuestion(answer['score'] as int), answer['text'] as String,textColor);
        }).toList(),
      ],
    );
  }
}
