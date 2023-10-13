import 'package:flutter/material.dart';

class ButtonChanger extends StatelessWidget {
  const ButtonChanger({super.key, required this.changeColor});

  final void Function() changeColor;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: changeColor,
      child: const Text(
        "PRESS",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }
}
