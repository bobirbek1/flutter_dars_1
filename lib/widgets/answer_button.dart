import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.javoblar, this.index, this.onTapped, {Key? key})
      : super(key: key);

  final String javoblar;
  final int? index;

  final Function onTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => onTapped(index),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
        ),
         child: Text(
          javoblar,
        ),
      ),
    );
  }
}
