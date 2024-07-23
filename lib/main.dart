import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'question.dart';
import 'answer.dart';
import 'result.dart';

void main() => runApp(MyApp());

//str to create StatelessWidget directly
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color w = Colors.white;
  Color b = Colors.black;
  Color bl = Colors.black;
  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
      num3 = 0;
      num4 = 0;
      num5 = 0;
      num6 = 0;
      num7 = 0;
      num8 = 0;
      num9 = 0;
    });
  }

  int num0 = 0,
      num1 = 0,
      num2 = 0,
      num3 = 0,
      num4 = 0,
      num5 = 0,
      num6 = 0,
      num7 = 0,
      num8 = 0,
      num9 = 0;
  var _totalScore = 0;
  int _questionindex = 0;
  var isSwitched = false;

  void answerQuestion(int score) {
    if (_questionindex == 0) num0 = score;
    if (_questionindex == 1) num1 = score;
    if (_questionindex == 2) num2 = score;
    if (_questionindex == 3) num3 = score;
    if (_questionindex == 4) num4 = score;
    if (_questionindex == 5) num5 = score;
    if (_questionindex == 6) num6 = score;
    if (_questionindex == 7) num7 = score;
    if (_questionindex == 8) num8 = score;
    if (_questionindex == 9) num9 = score;
    _totalScore += score;
    setState(() {
      _questionindex++;
    });
  }
  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What does HTML stand for?',
      'answers': [
        {'text': 'Hyper Text Markup Language', 'score': 1},
        {'text': 'High Text Markup Language', 'score': 0},
        {'text': 'Cascade Style Sheet', 'score': 0},
        {'text': 'None of these', 'score': 0},
      ]
    },
    {
      'questionText': 'Which language is used for web apps?',
      'answers': [
        {'text': 'PHP', 'score': 0},
        {'text': 'Python', 'score': 0},
        {'text': 'JavaScript', 'score': 0},
        {'text': 'All of the above', 'score': 1},
      ]
    },
    {
      'questionText': 'Which of the following is not a programming language?',
      'answers': [
        {'text': 'Python', 'score': 0},
        {'text': 'Java', 'score': 0},
        {'text': 'HTML', 'score': 1},
        {'text': 'Swift', 'score': 0},
      ]
    },
    {
      'questionText': 'Which company developed the Java programming language?',
      'answers': [
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Sun Microsystems', 'score': 1},
        {'text': 'Oracle', 'score': 0},
        {'text': 'IBM', 'score': 0},
      ]
    },
    {
      'questionText':
          'What is the output of console.log(typeof null) in JavaScript?',
      'answers': [
        {'text': '"object"', 'score': 1},
        {'text': ' "null"', 'score': 0},
        {'text': ' "undefined"', 'score': 0},
        {'text': '"boolean"', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which language is primarily used for developing iOS applications?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'Kotlin', 'score': 0},
        {'text': 'Swift', 'score': 1},
        {'text': 'C#', 'score': 0},
      ]
    },
    {
      'questionText': 'What does SQL stand for?',
      'answers': [
        {'text': 'Structured Query Language', 'score': 1},
        {'text': 'Simple Query Language', 'score': 0},
        {'text': 'Sorted Query Language', 'score': 0},
        {'text': 'Standard Query Language', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the purpose of the break statement in loops?',
      'answers': [
        {'text': 'To terminate the loop and exit', 'score': 1},
        {'text': 'To skip the current iteration', 'score': 0},
        {'text': 'To assign a pointer', 'score': 0},
        {'text': 'To pause the loop', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which of the following is a valid variable name in Python?',
      'answers': [
        {'text': '1variable', 'score': 0},
        {'text': 'variable_1', 'score': 1},
        {'text': 'variable', 'score': 0},
        {'text': 'variable', 'score': 0},
      ]
    },
    {
      'questionText': 'What does the git clone command do?',
      'answers': [
        {'text': 'Creates a new repository', 'score': 0},
        {'text': 'Downloads a repository', 'score': 1},
        {'text': 'Updates a local repository', 'score': 0},
        {'text': 'Deletes a repository', 'score': 0},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            // leading means the direction of the icon is left
          actions: [
            Switch(
                inactiveThumbColor: Colors.deepPurpleAccent,
                inactiveTrackColor: Colors.white,
                activeTrackColor: Colors.grey,
                value: isSwitched,
                onChanged:(value){
                 setState(() {
                   bl = Colors.white;
                   isSwitched =value;
                   if(isSwitched==true)
                     {
                       w = Colors.black;
                       b = Colors.white;
                     }
                   else
                    {
                      b = Colors.black;
                      w = Colors.white;
                    }
                 });
                }

                  )
          ],
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
            title: Text(
              "Quiz App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.black,
                    offset: Offset(4, 4),
                    blurRadius: 5,
                  ),
                  Shadow(
                    color: Colors.black,
                    offset: Offset(-4, -4),
                    blurRadius: 5,
                  ),
                  Shadow(
                    color: Colors.black,
                    offset: Offset(7, 7),
                    blurRadius: 5,
                  ),
                ],
              ),
            )),
        body: Container(
          color: w,
          child: _questionindex < _question.length
              ? Quiz(_question, _questionindex, answerQuestion,b)
              : Result(_resetQuiz, _totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          onPressed: () {
            if (_questionindex == 1) _totalScore -= num0;
            if (_questionindex == 2) _totalScore -= num1;
            if (_questionindex == 3) _totalScore -= num2;
            if (_questionindex == 4) _totalScore -= num3;
            if (_questionindex == 5) _totalScore -= num4;
            if (_questionindex == 6) _totalScore -= num5;
            if (_questionindex == 7) _totalScore -= num6;
            if (_questionindex == 8) _totalScore -= num7;
            if (_questionindex == 9) _totalScore -= num8;
            if (_questionindex == 10) _totalScore -= num9;
            setState(() {
              if (_questionindex > 0) {
                _questionindex--;
              }
            });
          },
          child: Icon(
            color: bl,
            Icons.arrow_back,
            size: 40,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
