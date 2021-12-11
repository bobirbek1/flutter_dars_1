import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question(this._question, {Key? key}) : super(key: key);

  final String _question;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding:const EdgeInsets.all(8),
      margin:const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: Text(
        _question,
        style:const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
