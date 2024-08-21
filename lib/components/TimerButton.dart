import 'package:flutter/material.dart';

class TimerButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const TimerButton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
            color: Colors.red,
          ),
          const SizedBox(width: 5),
          Text(
            title,
            style: const TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
