import 'package:flutter/material.dart';
import 'package:pomodoro/components/TimeEntry.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TimeEntry(title: 'Trabalho', value: 25),
              TimeEntry(title: 'Descanso', value: 5)
            ],
          )
        ],
      ),
    );
  }
}
