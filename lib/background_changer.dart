import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundChanger extends StatefulWidget {
  const BackgroundChanger({super.key});

  @override
  State<BackgroundChanger> createState() {
    return _BackgroundChangerState();
  }
}

class _BackgroundChangerState extends State<BackgroundChanger> {
  int a = 112;
  int r = 234;
  int g = 100;
  int b = 11;

  void changeColor() {
    setState(() {
      var random = Random();
      a = random.nextInt(256);
      r = random.nextInt(256);
      g = random.nextInt(256);
      b = random.nextInt(256);
    });
  }

  @override
  Widget build(contenxt) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(a, r, g, b),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                  ),
                  onPressed: changeColor,
                  child: const Text(
                    "CHANGE ME",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
