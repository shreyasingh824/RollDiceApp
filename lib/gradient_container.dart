import 'package:flutter/material.dart';
import 'package:third_app/dice_roller.dart';
//import 'package:third_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    required this.color1,
    required this.color2,
    Key? key,
  }) : super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.centerLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
