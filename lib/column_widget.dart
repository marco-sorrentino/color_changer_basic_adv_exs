import 'package:color_changer_basic_exs/button_changer.dart';
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget(
      {super.key, required this.generateColor, required this.changeColor});

  final Color generateColor;

  final void Function() changeColor;

  @override
  Widget build(context) {
    final String colorToCopy =
        "#${generateColor.value.toRadixString(16).substring(2)}";

    return Expanded(
      child: Container(
        color: generateColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonChanger(changeColor: changeColor),
            const SizedBox(
              height: 20,
            ),
            Text(
              colorToCopy,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
