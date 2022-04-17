import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  final _questions = const [
      {
        'qText': "What's your favorite iro?",
        'answers': [
          {
            'aText' : 'Kuro',
            'score' : 1,
          },
          {
            'aText' : 'Shiro',
            'score' : 2,
          },
          {
            'aText' : 'Ao',
            'score' : 3,
          },
          {
            'aText' : 'Aka',
            'score' : 4,
          }
        ]
      },
      {
        'qText': "What's your favorite doubutsu?",
        'answers': [
          {
            'aText' : 'Inu',
            'score' : 1,
          },
          {
            'aText' : 'Neko',
            'score' : 2,
          }
        ]
      },
      {
        'qText': "What's your favorite tabemono?",
        'answers': [
          {
            'aText' : 'Sushi',
            'score' : 1,
          },
          {
            'aText' : 'Tempura',
            'score' : 2,
          },
          {
            'aText' : 'Gohan',
            'score' : 3,
          }
        ]
      }  
  ];

  var _totalScore = 0;
  
  void _restart() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _qIndex++;
    });
    print(_qIndex);
    if (_qIndex >= _questions.length) {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hajimemashite")
          ),
        body: (_qIndex < _questions.length) 
          ? Quiz(
            answerQuestion: _answerQuestion,
            questions: _questions,
            qIndex: _qIndex
          )
          : Result(
            totalScore: _totalScore, 
            restart: _restart
          ),
      ),
    );
  }
}