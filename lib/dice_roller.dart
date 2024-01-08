import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import "large_text.dart";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String asset = "assets/images/dice-1.png";

  void roll() {
    int value = Random().nextInt(6) + 1;
    if (kDebugMode) {
      print("Dice rolled the number $value.");
    }
    setState(() {
      asset = "assets/images/dice-$value.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          asset,
          width: 200,
        ),
        TextButton(
            onPressed: roll,
            style: TextButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 1),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
            child: const LargeText(text: "Roll the dice", color: Colors.white))
      ],
    );
  }
}