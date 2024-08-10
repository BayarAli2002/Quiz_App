import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final void Function()? q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultphrase {
    String resultText;
    switch (resultScore) {
      case 10:
        resultText = "Excellent";
      case 9:
        resultText = "Excellent";
        break;
      case 8:
        resultText = "Very Good";
        break;
      case 7:
        resultText = "Good";
        break;
      case 6:
        resultText = "Medium";
        break;
      case 5:
        resultText = "Satisfied";
        break;
      default:
        resultText = "Failled";
        break;
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("your score is $resultScore",
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultphrase,
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: q,
              child: Text("Restart the App",
              style: TextStyle(
                fontSize: 35,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              )
          ),

        ],

    )
    );

  }
}
