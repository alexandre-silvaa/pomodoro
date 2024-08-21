import 'package:flutter/material.dart';

class TimeEntry extends StatelessWidget {
  final String title;
  final int value;
  final ColorSwatch color;
  final void Function()? inc;
  final void Function()? dec;

  const TimeEntry(
      {super.key,
      required this.title,
      required this.value,
      required this.color,
      this.inc,
      this.dec});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  backgroundColor: color),
              child: const Icon(Icons.arrow_downward, color: Colors.white),
            ),
            Text('$value min'),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  backgroundColor: color),
              child: const Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
