import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  final Function ontap;
  final String label;

  BottomButton({@required this.label, @required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kBigTextSyle,
          ),
        ),
        height: kHeightButtomContainer,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimeColorButton,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
