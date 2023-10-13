import 'dart:math';

import 'package:color_changer_basic_exs/Column_widget.dart';
import 'package:flutter/material.dart';

class ChangeBg extends StatefulWidget {
  const ChangeBg({super.key});

  @override
  State<ChangeBg> createState() {
    return _ChangeBgState();
  }
}

class _ChangeBgState extends State<ChangeBg> {
  var generateColor = const Color.fromARGB(255, 27, 119, 195);
  var generateColor2 = const Color.fromARGB(255, 139, 27, 195);
  var generateColor3 = const Color.fromARGB(255, 200, 255, 0);

  void changeColor() {
    setState(() {
      var random = Random();
      generateColor = Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    });
  }

  void changeColor2() {
    setState(() {
      var random = Random();
      generateColor2 = Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    });
  }

  void changeColor3() {
    setState(() {
      var random = Random();
      generateColor3 = Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            ColumnWidget(
                generateColor: generateColor, changeColor: changeColor),
            ColumnWidget(
                generateColor: generateColor2, changeColor: changeColor2),
            ColumnWidget(
                generateColor: generateColor3, changeColor: changeColor3),
          ],
        ),
      ),
    );
  }
}
