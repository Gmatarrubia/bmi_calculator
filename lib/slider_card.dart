import 'package:flutter/material.dart';
import 'constants.dart';

class SliderCard extends StatefulWidget {
  final String label;
  final Function(int) onUpdate;
  final int initialValue;

  SliderCard(
      {@required this.label, @required this.initialValue, this.onUpdate});

  @override
  _SliderCardState createState() => _SliderCardState(initialValue);
}

class _SliderCardState extends State<SliderCard> {
  double cardValue = 180.0;

  _SliderCardState(int initialValue) {
    cardValue = initialValue.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.label,
            style: kMyAppTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                cardValue.toStringAsFixed(1),
                style: kBigTextSyle,
              ),
              Text(
                "cm",
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.amber,
              inactiveTrackColor: Colors.amber[100],
              thumbColor: Colors.amber,
              overlayColor: Colors.amber.withAlpha(0x29),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
            ),
            child: Slider(
              value: cardValue,
              min: 120.0,
              max: 230.0,
              onChanged: (double newValue) {
                setState(() {
                  cardValue = newValue.roundToDouble();
                  widget.onUpdate(cardValue.toInt());
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
