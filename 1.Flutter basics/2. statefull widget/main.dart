import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;

  void answerQuestion() {
    setState(() {
      qIndex++;
      if (qIndex > 2) {
        qIndex = 0;
      }
    });
    print(qIndex);
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
            Text(
              questions.elementAt(qIndex)
            ),
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