import 'package:flutter/material.dart';
import 'package:flutter_dice_app/dice.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Dice' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      backgroundColor:const Color.fromRGBO(255, 94, 0, 1),
      body:  const SizedBox(
        width: double.infinity,
        child: Dice()),
    );
  }
}