import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restart;

  Result({this.totalScore, this.restart});

  String get getResult {
    return 'Arigatou, your score is: ' + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResult,
            style: TextStyle(
              fontSize: 36, 
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restart, 
            child: Text('Restart Quiz!!')
          )
        ],
      ),
    );
  }
}