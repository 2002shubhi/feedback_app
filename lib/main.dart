import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './sampleQuestions.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var q= 0;
  var totalScore= 0;

  void resetQuiz() {
    setState(() {
      q = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int sliderVal) {
    setState(() {
      totalScore = totalScore + sliderVal;
      q += 1;
    });
    print(totalScore);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      theme:ThemeData(
        scaffoldBackgroundColor: const Color(0xFF80CBC4),
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal[700],title:Text("Survey App")),

        body: q < questions.length
            ? Quiz(answerQuestion, questions, q)
            : Center(
          child: Result(totalScore, resetQuiz),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}