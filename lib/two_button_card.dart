import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_button.dart';

class TwoButtonsCard extends StatefulWidget {
  final String label;
  final String units;
  final int initialValue;
  final Function(int) onUpdate;

  TwoButtonsCard(
      {@required this.label, this.units, this.initialValue, this.onUpdate});

  @override
  _TwoButtonsCardState createState() => _TwoButtonsCardState(initialValue);
}

class _TwoButtonsCardState extends State<TwoButtonsCard> {
  int cardValue = 70;

  _TwoButtonsCardState(int initialValue) {
    cardValue = initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
              cardValue.toString(),
              style: kBigTextSyle,
            ),
            Text(
              widget.units,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              buttonFunction: () {
                setState(() {
                  cardValue--;
                  if (widget.onUpdate != null) {
                    widget.onUpdate(cardValue);
                  }
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              buttonFunction: () {
                setState(() {
                  cardValue++;
                  if (widget.onUpdate != null) {
                    widget.onUpdate(cardValue);
                  }
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
