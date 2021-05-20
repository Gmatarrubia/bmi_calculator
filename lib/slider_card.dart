import 'package:flutter/material.dart';
import 'constants.dart';

class SliderCard extends StatelessWidget {
  final String label;

  SliderCard({@required this.label});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: kMyAppTextStyle,
          ),
        ],
      ),
    );
  }
}
