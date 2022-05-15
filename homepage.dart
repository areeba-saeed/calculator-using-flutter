import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void divide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clearAll() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Output: $sum",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 1"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 2"),
                controller: t2,
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text("+"),
                    color: Colors.blueAccent,
                    onPressed: addition,
                  ),
                  MaterialButton(
                    child: Text("-"),
                    color: Colors.blueAccent,
                    onPressed: subtraction,
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text("*"),
                    color: Colors.blueAccent,
                    onPressed: multiplication,
                  ),
                  MaterialButton(
                    child: Text("/"),
                    color: Colors.blueAccent,
                    onPressed: divide,
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Clear"),
                    color: Colors.blueAccent,
                    onPressed: clearAll,
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
