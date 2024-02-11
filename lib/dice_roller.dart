import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
//var dice = 'assets/images/dice-2.png';

  void roleDice() {
    // Generate a random number between 1 and 6
    int randomNumber = Random().nextInt(6) + 1;

    // Update the active dice image based on the random number
    setState(() {
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
    });

    print("state is changing");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        // TextButton with custom style and padding
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: roleDice,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.green[900]!), // Dark green background color
            foregroundColor: MaterialStateProperty.all<Color>(
                Colors.white), // White text color
            textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(fontSize: 20),
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(
                  vertical: 16, horizontal: 24), // Add padding here
            ),
          ),
          child: Text('Roll Your Dice'),
        ),
      ],
    );
  }
}
