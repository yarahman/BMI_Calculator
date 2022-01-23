import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {
  ReusebleCard({required this.clr, required this.cardChild});

  final Color clr;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: clr),
    );
  }
}
