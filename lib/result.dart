import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get printText {
    String resultText;
    if (totalScore <= 15) {
      resultText = "We are not Same bro";
    } else if (totalScore <= 18) {
      resultText = "Eh... Just acceptable :-|";
    } else if (totalScore <= 24) {
      resultText = "Good choices... You're good.";
    } else if (totalScore <= 30) {
      resultText = "We are same bruh";
    } else {
      resultText = "What the heck just happened";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            printText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Reset Quiz',
              ),
              textColor: Colors.blue,
            )
        ],
      ),
    );
  }
}
