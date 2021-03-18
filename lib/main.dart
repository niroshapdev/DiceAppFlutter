import 'package:flutter/material.dart';
import 'dart:math';

void main() {
 return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;

  void changeDiceface() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('left number is $leftDiceNumber');
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
                 changeDiceface();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                 changeDiceface();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),

        ],
      ),
    );
}

}
