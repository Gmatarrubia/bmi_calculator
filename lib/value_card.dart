import 'package:flutter/material.dart';

class ValueCard extends StatelessWidget {
  final Color color;
  final Widget childCard;

  ValueCard({@required this.color, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}