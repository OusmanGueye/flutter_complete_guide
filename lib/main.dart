import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() => {
        setState(() {
          questionIndex++;
        }),
        print('questionIndex = ' + questionIndex.toString())
      };

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'is your favorite color',
        'answers': ['Red', 'Black', 'Green', 'White']
      },
      {
        'questionText': 'What\'is your favorite animals',
        'answers': ['Elephant', 'Snak', 'Rabit', 'Lion']
      },
      {
        'questionText': 'Who\'is your favorite Nba Player',
        'answers': ['James', 'Durant', 'Kobe', 'Jordan']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions.elementAt(questionIndex)['questionText'] as String,
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answers) {
              return Answer(_answerQuestion, answers);
            }).toList()
          ],
        ),
      ),
    );
  }
}
