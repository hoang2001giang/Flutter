import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  final questions = const [
      {
        'qText': "What's your favorite iro?",
        'answers': [
          'Kuro', 'Shiro', 'Ao', 'Aka'
        ]
      },
      {
        'qText': "What's your favorite doubutsu?",
        'answers': [
          'Inu', 'Neko'
        ]
      },
      {
        'qText': "What's your favorite tabemono?",
        'answers': [
          'Sushi', 'Tempura', 'Gohan'
        ]
      }  
  ];

  void _answerQuestion() {
    setState(() {
      _qIndex++;
    });
    print(_qIndex);
    if (_qIndex >= questions.length) {
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
        body: (_qIndex < questions.length) 
          ? Column(
            children: [
              Text("Mondai!"),
              Question(
                questions[_qIndex]['qText'] as String
              ),
              ...(questions[_qIndex]['answers'] as List<String>).map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ]
            )
          : Center(
            child: Text('Arigatou'),
          ),
      ),
    );
  }
}