import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DoubleDiceApp());
}

class DoubleDiceApp extends StatelessWidget {
  const DoubleDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollBothDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; // 1 to 6
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(child: Text('Double Dice')),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: rollBothDice,
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: rollBothDice,
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
