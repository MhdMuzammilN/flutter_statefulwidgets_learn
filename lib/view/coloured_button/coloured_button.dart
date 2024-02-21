import 'package:flutter/material.dart';

class ColoredButton extends StatefulWidget {
  const ColoredButton({super.key});

  @override
  State<ColoredButton> createState() => _ColoredButtonState();
}

class _ColoredButtonState extends State<ColoredButton> {
  List colorChoice = [
    {
      "colorName": "Red",
      "colorValue": Colors.red,
    },
    {
      "colorName": "Green",
      "colorValue": Colors.green,
    },
    {
      "colorName": "Blue",
      "colorValue": Colors.blue,
    },
    {
      "colorName": "Purple",
      "colorValue": Colors.purple,
    },
    {
      "colorName": "Yellow",
      "colorValue": Colors.yellow,
    },
  ];

  var bodyColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
              shrinkWrap: true,
              itemCount: colorChoice.length,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: colorChoice[index]["colorValue"],
                          border: bodyColor == colorChoice[index]["colorValue"]
                              ? Border.all(color: Colors.black, width: 5)
                              : null),
                      height: 75,
                      child:
                          Center(child: Text(colorChoice[index]["colorName"]))),
                  onTap: () {
                    setState(() {
                      bodyColor = colorChoice[index]["colorValue"];
                    });
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
