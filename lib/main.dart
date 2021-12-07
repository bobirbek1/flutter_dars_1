import 'package:flutter/material.dart';
import 'package:flutter_dars_1/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  var questions = [
    "O'zbekistonning poytaxti",
    "Dunyodagi eng kichik davlat?",
    "Eng uzun daryo?",
  ];
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void updateState() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Telegram",
          ),
        ),
        body: Column(
          children: [
            Question(),
            ElevatedButton(
              onPressed: () {
                updateState();
              },
              child: Text("Toshkent"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Samarqand"),
            ),
            ElevatedButton(
              onPressed: () {
                updateState();
              },
              child: Text("Andijon"),
            ),
          ],
        ),
      ),
    );
  }

  void addTwoInt(int a, int b) {
    print(a + b);
  }

  // home: Scaffold(
  //   appBar: AppBar(
  //     title: Text("My first app"),
  //   ),
  //   body: Column(
  //     children: [
  //       Text(widget.questions[questionIndex]),
  //       ElevatedButton(
  //         onPressed: updateState,
  //         child: Text("answer 1"),
  //       ),
  //       ElevatedButton(
  //         onPressed: updateState,
  //         child: Text("answer 2"),
  //       ),
  //       ElevatedButton(
  //         onPressed: updateState,
  //         child: Text("answer 3"),
  //       ),
  //     ],
  //   ),
  // ),
}
