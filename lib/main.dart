import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _questionChange(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favourite Color ?',
      'answers': [
        {'option': 'Black', 'score': 10},
        {'option': 'Blue', 'score': 8},
        {'option': 'White', 'score': 6},
        {'option': 'Red', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favoutite Animal ?',
      'answers': [
        {'option': 'Lion', 'score': 10},
        {'option': 'Dog', 'score': 8},
        {'option': 'Cat', 'score': 6},
        {'option': 'Snake', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favoutite Sport ?',
      'answers': [
        {'option': 'Cricket', 'score': 10},
        {'option': 'Football', 'score': 8},
        {'option': 'Baseball', 'score': 6},
        {'option': 'Hockey', 'score': 4},
      ],
    },
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionChange: _questionChange,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
