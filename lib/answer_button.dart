import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.onTapped,this.answer);

  final answer;
  Function onTapped;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTapped(),
      child: Text(
        answer,
      ),
    );
  }
}
