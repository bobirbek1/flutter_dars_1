import 'package:flutter/material.dart';

class Natija extends StatelessWidget {
  const Natija(this.natija,{Key? key}) : super(key: key);

  final String natija;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        natija,
        style:const TextStyle(
          fontSize: 24,
          color: Colors.green,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
