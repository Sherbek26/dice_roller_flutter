import 'package:flutter/material.dart';
import 'package:just/roller_dice.dart';

var bottomRight = Alignment.bottomRight;
var topRight = Alignment.topLeft;

class DecorationContainer extends StatelessWidget {
  const DecorationContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors, begin: bottomRight, end: topRight)),
        child: const Center(child: RollerDice()));
  }
}
