

import 'package:flutter/material.dart';
import 'package:flutter_dars_1/widgets/answer_button.dart';
import 'package:flutter_dars_1/widgets/natija.dart';
import 'package:flutter_dars_1/widgets/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

   final List<Map<String, dynamic>> savollar = const [
    {
      "savol": "Olma",
      "javob": ["apple", "cherry", "banana", "apricot"],
      "to'g'riJavob": 0
    },
    {
      "savol": "Banan",
      "javob": ["apple", "cherry", "banana"],
      "to'g'riJavob": 2
    },
    {
      "savol": "Apelsin",
      "javob": ["apple", "cherry", "orange", "apricot"],
      "to'g'riJavob": 2
    }
  ];

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;
  var natija = 0;

  holatniYangilash(int javobIndex) {
    if (widget.savollar[index]["to'g'riJavob"] == javobIndex) natija++;
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "6-dars",
          ),
        ),
        body: index < widget.savollar.length
            ? Column(
                children: [
                  Question(
                    widget.savollar[index]["savol"],
                  ),
                  ...widget.savollar[index]["javob"]!.map(
                    (javob) {
                      return AnswerButton(
                        javob,
                        widget.savollar[index]["javob"].indexOf(javob),
                        holatniYangilash,
                      );
                    },
                  ),
                ],
              )
            : Natija("Sizning darajangiz: $natija"),
      ),
    );
  }
}
