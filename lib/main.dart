import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quizzler/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizApp(),
          ),
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Icon> scoreKeeper=[];
  QuizBrain quizBrain=QuizBrain();
  int totalCorrectAnswer=0;
  bool completed=false;
  void checkAnswer({required bool userPickedanswer}){
    setState(() {
      if(scoreKeeper.length>=10)
        scoreKeeper.clear();

      if(!completed) {
        if (quizBrain.answer == userPickedanswer) {
          scoreKeeper.add(Icon(Icons.check, color: Colors.green, size: 30.0,));
          totalCorrectAnswer++;
        }
        else
          scoreKeeper.add(Icon(Icons.close, color: Colors.red, size: 30.0,));
      }
      if(!quizBrain.nextQuestion()){
        completed=true;
        Alert(
            context: context,
            title: "Quiz Finished.",
            type: AlertType.success,
            desc: "Your total score is  ${totalCorrectAnswer}",
            buttons: [
              DialogButton(
                  child: Text("Restart"),
                  onPressed:(){
                    completed=false;
                    setState(() {
                      totalCorrectAnswer=0;
                      quizBrain.reset();
                      scoreKeeper.clear();
                      Navigator.of(context).pop();
                    });
                  }),
              DialogButton(
                  child: Text("Exit"),
                  onPressed:(){
                    exit(0);
                  }
                  ),
            ]
        ).show();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
              ),
            ),
          ),
        ),
        ),
        Expanded(
          child: Padding(
            padding:EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: Text(
                "True",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                checkAnswer(userPickedanswer: true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(EdgeInsets.zero)
              ),
              child: Text(
                "False",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                checkAnswer(userPickedanswer: false);
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: , false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/