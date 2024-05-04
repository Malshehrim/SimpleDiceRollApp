import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lfetDiceNumber = 1;
  int rightDiceNumber = 1;
  int bothDiceNumber = 1;

  void _changeDiceNumber() {
    setState(() {
      lfetDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    _changeDiceNumber();
                  },
                  child: Image.asset(
                    'lib/images/dice$lfetDiceNumber.png',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    _changeDiceNumber();
                  },
                  child: Image.asset(
                    'lib/images/dice$rightDiceNumber.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
