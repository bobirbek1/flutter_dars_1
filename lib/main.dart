import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Text("Rossiyaning poytaxti qayer?"),
            ElevatedButton(onPressed: null, child: Text("Toshkent")),
            ElevatedButton(onPressed: null, child: Text("Almata")),
            ElevatedButton(onPressed: null, child: Text("Moskva")),
          ],
        ),
      ),
    );
  }
}
