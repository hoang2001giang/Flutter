import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int qIndex;

  Quiz({
    @required this.answerQuestion, 
    @required this.qIndex, 
    @required this.questions
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Mondai!"),
        Question(
          questions[qIndex]['qText'] as String
        ),
        ...(questions[qIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['aText'] as String
          );
        }).toList()
      ]
    );
  }
}