import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<RollerDice> {
  var numDice = 2;

  void rollDice() {
    setState(
      () {
        numDice = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$numDice.png',
          width: 200,
          height: 300,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.black54,
                textStyle: const TextStyle(fontSize: 28),
                padding: const EdgeInsets.all(10)),
            child: const Text(
              "Roll Dice",
            ))
      ],
    );
  }
}
