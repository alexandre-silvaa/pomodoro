import 'package:flutter/material.dart';
import 'package:pomodoro/components/TimeEntry.dart';
import 'package:pomodoro/components/Timer.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Timer()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeEntry(title: 'Trabalho', value: 25),
                TimeEntry(title: 'Descanso', value: 5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
