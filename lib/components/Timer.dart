import 'package:flutter/material.dart';
import 'package:pomodoro/components/TimerButton.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            '25:00',
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TimerButton(title: 'Iniciar', icon: Icons.play_arrow),
              TimerButton(title: 'Parar', icon: Icons.stop)
            ],
          )
        ],
      ),
    );
  }
}
