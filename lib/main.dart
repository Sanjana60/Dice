import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 5;
  int rightdicenumber = 4;
  void numberd() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                numberd();
              },
              child: Image(
                image: AssetImage('images/dice$leftdicenumber.jpg'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                numberd();
              },
              child: Image(
                image: AssetImage('images/dice$rightdicenumber.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
