import 'package:exercises_basic_advance/button_counter.dart';
import 'package:exercises_basic_advance/spacer.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  var initNumber = 0;

  void sumNumber() {
    setState(() {
      initNumber++;
    });
  }

  void subNumber() {
    setState(() {
      initNumber--;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.lime,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Counter",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 4, 42, 255)),
                ),
                const SpacerWidget(size: 50),
                Container(
                  decoration: BoxDecoration(
                      color: initNumber >= 0
                          ? Colors.purpleAccent
                          : const Color.fromARGB(255, 251, 64, 64),
                      borderRadius: BorderRadius.circular(10.0)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text(
                    initNumber.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SpacerWidget(size: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonCounter(text: "-", operation: subNumber),
                    ButtonCounter(text: "+", operation: sumNumber)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
