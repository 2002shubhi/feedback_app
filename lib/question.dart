import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(32),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    CircleAvatar(
    radius:100,
    backgroundImage: NetworkImage("https://survicate.com/wp-content/uploads/2019/12/measuring-customer-satisfaction.png") ),
    SizedBox(
    height: 5,
    ),

    Text("Because we care about your satisfaction", style: TextStyle(color: Colors.teal[800], fontSize: 15, fontWeight: FontWeight.w400),),
    SizedBox(
    height: 10,
    ),
    Text(
    //adding container for wrapping

        questionText,
        style: TextStyle(fontSize: 26, color: Colors.teal[900], fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
      ]
    ),
    );

  }
}