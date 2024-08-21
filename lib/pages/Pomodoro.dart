import 'package:flutter/material.dart';
import 'package:pomodoro/components/TimeEntry.dart';
import 'package:pomodoro/components/Timer.dart';
import 'package:pomodoro/store/pomodoro/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Timer()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Observer(
              builder: (_) {
                final color = store.isWorking() ? Colors.red : Colors.green;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TimeEntry(
                      title: 'Trabalho',
                      value: store.workTime,
                      color: color,
                      inc: () => store.incrementTime(TypeInterval.work),
                      dec: () => store.decrementTime(TypeInterval.work),
                    ),
                    TimeEntry(
                      title: 'Descanso',
                      value: store.restTime,
                      color: color,
                      inc: () => store.incrementTime(TypeInterval.rest),
                      dec: () => store.decrementTime(TypeInterval.rest),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
