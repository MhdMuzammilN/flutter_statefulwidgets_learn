import 'dart:math';

import 'package:flutter/material.dart';

class DiceRandom extends StatefulWidget {
  const DiceRandom({super.key});

  @override
  State<DiceRandom> createState() => _DiceRandomState();
}

class _DiceRandomState extends State<DiceRandom> {
  int randomValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              setState(() {
                randomValue = Random().nextInt(6) + 1;
              });
            },
            child: Image(
              image: AssetImage("assets/d$randomValue.png"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  randomValue = 0;
                });
              },
              child: const Text("Restart"))
        ],
      )),
    );
  }
}
