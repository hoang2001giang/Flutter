import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Nya ichi ni san");
  }

  void answer(int n) {
    if (n == 1) {
      print("ichi");
    }
    if (n == 2) {
      print("ni");
    }
    if (n == 3) {
      print("san");
    }
    if (n == 4) {
      print("yon");
    }
  }

  @override
  Widget build(BuildContext context) {
    var question = [
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
            RaisedButton(
              child: Text("Kotae 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Kotae 2"),
              onPressed: () {
                print("ni");
              },
            ),
            RaisedButton(
              child: Text("Kotae 3"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Kotae 4"),
              onPressed: answerQuestion,
            ),  
          ]
          ),
      ),
    );
  }
}