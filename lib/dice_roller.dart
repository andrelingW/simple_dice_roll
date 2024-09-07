import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_text_style.dart';

var imageNumber = 1;
var imagePath = "assets/images/dice-1.png";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 247, 112, 2),
            padding: const EdgeInsets.all(20),
          ),
          child: const MainText("Roll Dice"),
        )
      ],
    );
  }

  void onPressed() {
    imageNumber = Random().nextInt(6) + 1;
    setState(() {
      imagePath = "assets/images/dice-$imageNumber.png";
    });
  }
}
