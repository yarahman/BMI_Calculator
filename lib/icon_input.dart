import 'package:flutter/material.dart';

class Icon_Input extends StatelessWidget {
  Icon_Input({required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 55,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18.0, color: Colors.white70),
        )
      ],
    );
  }
}
