import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[600], // body color
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green[900], // appbar color
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  // setting the initial value of the left dice
  int leftDiceNumber = 1; 
  // setting the initial value of the right dice
  int rightDiceNumber = 6; 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          // two rows containing two dices
          mainAxisAlignment: MainAxisAlignment.center, // centering the dice
          children: [
            Container(
              child: Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(16.0), // ignored the default padding for beauty
                  child: new Image.asset(
                    "images/dice$leftDiceNumber.png",
                  ),
                  onPressed: () {
                    setState(() {
                      // setting the new value after touching the dice
                      leftDiceNumber = new Random().nextInt(5) + 1; // +1 to avoid 0 and to put 6
                    });
                  },
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: FlatButton(
                    padding: EdgeInsets.all(16.0), // ignored the default padding for beauty
                    child: new Image.asset(
                      "images/dice$rightDiceNumber.png",
                    ),
                    onPressed: () {
                      setState(() {
                        // setting the new value after touching the dice
                        rightDiceNumber = new Random().nextInt(5) + 1; 
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
