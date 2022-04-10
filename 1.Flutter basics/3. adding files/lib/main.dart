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

  void _answerQuestion() {
    setState(() {
      _qIndex++;
      if (_qIndex > 2) {
        _qIndex = 0;
      }
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite food?"  
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hajimemashite")
          ),
        body: Column(
          children: [
            Text("Mondai!"),
            Question(
              questions.elementAt(_qIndex)
            ),
            Answer(_answerQuestion, 'Kotae 1'),
            Answer(_answerQuestion, 'Kotae 2'),
            Answer(_answerQuestion, 'Kotae 3'),
            Answer(_answerQuestion, 'Kotae 4'),
          ]
          ),
      ),
    );
  }
}