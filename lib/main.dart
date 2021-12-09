import 'package:flutter/material.dart';
import 'package:flutter_dars_1/answer_button.dart';
import 'package:flutter_dars_1/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  var _questions = <Map<String,dynamic>>[
    {
      "question": "O'zbekistonning poytaxti",
      "answer": ["Toshkent", "Samarqand", "Andijon"]
    },
    {
      "question": "Dunyning eng kichik davlati?",
      "answer": ["Rossiya", "Saudi", "Vatikan", "Xitoy"]
    },
    {
      "question": "Nechi yoshdasan?",
      "answer": ["12", "23", "48", "60"]
    }
  ];
  // [
  //   "O'zbekistonning poytaxti",
  //   "Dunyodagi eng kichik davlat?",
  //   "Eng uzun daryo?",
  // ];

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  _updateState() {
    print("update state");
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // question._question = "Assalomu alaykum!";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Telegram",
          ),
        ),
        body: Column(
          children: [
            Question(
              widget._questions[questionIndex]["question"],
            ),
            ...widget._questions[questionIndex]["answer"]?.map((element) {
              return AnswerButton(_updateState,element);
            }),
          ],
        ),
      ),
    );
  }

  void addTwoInt(int a, int b) {
    print(a + b);
  }
}
