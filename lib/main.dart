import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> questions = [
    "Who is your father?",
    "What is your favourite color?"
  ];
  int indexQuestion = 0;
  String title = "My First App";

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: (indexQuestion > questions.length - 1)
          ? Text('Finish')
          : Column(
              children: [
                Question(questions[indexQuestion]),
                Answer(
                  'Justin Bieber',
                  () => print("Justin"),
                ),
                Answer(
                  'David Beckham',
                  () {
                    print('David');
                    setState(() {
                      indexQuestion++;

                      title = "TESTETETETETTEETTETEET";
                    });
                  },
                ),
                Answer(
                  'Zinedine Zidane',
                  () => print('Zidane'),
                ),
                Answer(
                  'Paul Scholes',
                  () => print("Paul"),
                )
              ],
            ),
    ));
  }
}
