import 'package:flutter/material.dart';

class ValueCard extends StatelessWidget {
  final Color color;
  final Widget childCard;
  final tapFunction;

  ValueCard({@required this.color, this.childCard, this.tapFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          child: childCard,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onTap: tapFunction,
      ),
    );
  }
}
