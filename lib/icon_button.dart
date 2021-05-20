import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function buttonFunction;

  RoundIconButton({@required this.icon, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttonFunction,
      child: Icon(
        icon,
      ),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      shape: CircleBorder(),
      fillColor: kPrimeColorButton,
    );
  }
}
