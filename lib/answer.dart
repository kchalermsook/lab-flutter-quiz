import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onClick;

  Answer(this.answerText, this.onClick);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(this.answerText),
        onPressed: this.onClick,
      ),
    );
  }
}
