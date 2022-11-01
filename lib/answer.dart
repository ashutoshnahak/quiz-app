import 'package:flutter/material.dart';
class Answers extends StatelessWidget {
final VoidCallback selecthandler;
final String answerText;
Answers(this.selecthandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selecthandler,
      ),
    );
  }
}