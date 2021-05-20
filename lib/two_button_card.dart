import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_button.dart';

class TwoButtonsCard extends StatefulWidget {
  final String label;
  final String units;

  TwoButtonsCard({@required this.label, this.units});

  @override
  _TwoButtonsCardState createState() => _TwoButtonsCardState();
}

class _TwoButtonsCardState extends State<TwoButtonsCard> {
  int weight = 70;

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
              weight.toString(),
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
                  weight--;
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
                  weight++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
