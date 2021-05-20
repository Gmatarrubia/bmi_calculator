import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final String textCard;

  IconCard({@required this.icon, this.textCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textCard,
          style: TextStyle(
            color: Colors.amberAccent,
          ),
        ),
      ],
    );
  }
}