import 'package:flutter/material.dart';

class TimeEntry extends StatelessWidget {
  final String title;
  final int value;

  const TimeEntry({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.arrow_downward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  backgroundColor: Colors.red),
            ),
            Text('$value min'),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.arrow_downward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  backgroundColor: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
