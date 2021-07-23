import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  Answer({@required this.setFeedbackValue, this.initValue});
  final Function setFeedbackValue;
  final int initValue;

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int value = 1;

  void setValue(double val) {
    setState(() {
      value = val.toInt();
    });
    widget.setFeedbackValue(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(),
        SizedBox(
          width: 5,
        ),
        Text("1"),
        Expanded(
          child:  Slider(
            min: 1,
            max: 5,
            divisions: 4,

            activeColor: Colors.pinkAccent[value * 200 - 100],
            inactiveColor: Colors.pink,
            onChanged: (val) {
              setValue(val);
            },
            value: value.toDouble(),
          ),

        ),
        Text("5"),
      ],
    );
  }
}