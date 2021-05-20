import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_card.dart';
import 'value_card.dart';

const Color activeColorValueCard = Color(0xFF1D1E33);
const Color inactiveColorValueCard = Color(0xFF111328);
const Color colorButtom = Color(0xFFEB1555);
const double heightButtomContainer = 70.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColorValueCard;
  Color femaleCardColor = inactiveColorValueCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Calculadora de IMC"),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(
                    color: maleCardColor,
                    childCard: IconCard(
                      icon: FontAwesomeIcons.mars,
                      textCard: "MALE",
                    ),
                  ),
                  ValueCard(
                    color: femaleCardColor,
                    childCard: IconCard(
                      icon: FontAwesomeIcons.venus,
                      textCard: "FEMALE",
                    ),
                  ),
                ],
              ),
            ),
            ValueCard(
              color: activeColorValueCard,
              childCard: null,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(
                    color: activeColorValueCard,
                    childCard: null,
                  ),
                  ValueCard(
                    color: activeColorValueCard,
                    childCard: null,
                  ),
                ],
              ),
            ),
            Container(
              color: colorButtom,
              height: heightButtomContainer,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
