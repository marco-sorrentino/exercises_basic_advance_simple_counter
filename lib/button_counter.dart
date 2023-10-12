import 'package:flutter/material.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({super.key, required this.text, required this.operation});

  final String text;
  final void Function() operation;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: operation,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 74, 68, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
