import 'package:flutter/material.dart';
import './question.dart';
import 'slider_response.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<String> questions;
  final int q;
  Quiz(this.answerQuestion, this.questions, this.q);
  int currentFeedbackValue = 1;

  void setFeedbackValue(int feedbackValue) {
    currentFeedbackValue = feedbackValue;
    print(currentFeedbackValue);
  }

  static const initFeedbackValue = 3;
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(questions[q]),
            SizedBox(
              height: 10,
            ),
            Answer(
              setFeedbackValue: setFeedbackValue,
              initValue: initFeedbackValue,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text('Next',style: TextStyle(color: Colors.teal[900]),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              onPressed: () => answerQuestion(currentFeedbackValue),
            ),
          ],
        ),
      ),
    );
  }
}