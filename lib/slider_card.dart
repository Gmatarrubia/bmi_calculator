import 'package:flutter/material.dart';
import 'constants.dart';

class SliderCard extends StatelessWidget {
  final String label;
  //TODO: Refactor attributes that shouldn't be final
  final double cardValue = 160;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                cardValue.toString(),
                style: kBigTextSyle,
              ),
              Text(
                "cm",
              ),
            ],
          ),
          Slider(
            value: cardValue,
            min: 120.0,
            max: 230.0,
            onChanged: (double newValue) {
              //TODO: allow this:
              //setState( () {
              print("New value is: $newValue");
              //cardValue = newValue;
              //}),
            },
            activeColor: Colors.amber,
            inactiveColor: Colors.amber[100],
          ),
        ],
      ),
    );
  }
}
