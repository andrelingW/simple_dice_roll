import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

const startAlignment = Alignment.centerRight;
const endAlignment = Alignment.centerLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colorList});

  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }

  
}
