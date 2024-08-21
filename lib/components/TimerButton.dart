import 'package:flutter/material.dart';

class TimerButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final ColorSwatch color;
  final void Function()? click;

  const TimerButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.color,
      this.click});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: color,
          ),
          const SizedBox(width: 5),
          Text(
            title,
            style: TextStyle(
                color: color, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
