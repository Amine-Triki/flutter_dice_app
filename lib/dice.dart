import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();
class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

int num = 1;
void rollDice(){
  setState(() {
    num = random.nextInt(6)+1 ;
  });
}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/dice-$num.png',
          width: 250,
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            rollDice();
          },
          child: const Text(
            "click me",
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}
