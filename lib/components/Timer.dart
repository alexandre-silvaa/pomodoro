import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/TimerButton.dart';
import 'package:pomodoro/store/pomodoro/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        final color = store.isWorking() ? Colors.red : Colors.green;
        return Container(
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.isWorking() ? 'Hora de trabalhar' : 'Hora de descansar',
                style: const TextStyle(fontSize: 35, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 120, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (!store.started)
                    TimerButton(
                      title: 'Iniciar',
                      icon: Icons.play_arrow,
                      color: color,
                      click: store.start,
                    ),
                  if (store.started)
                    TimerButton(
                        title: 'Parar',
                        icon: Icons.stop,
                        color: color,
                        click: store.stop),
                  TimerButton(
                    title: 'Reiniciar',
                    icon: Icons.refresh,
                    color: color,
                    click: store.stop,
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
