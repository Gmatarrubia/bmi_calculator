import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_card.dart';
import 'value_card.dart';
import 'slider_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(
                    color: selectedGender == Gender.male
                        ? kActiveColorValueCard
                        : kInactiveColorValueCard,
                    childCard: IconCard(
                      icon: FontAwesomeIcons.mars,
                      textCard: "HOMBRE",
                    ),
                    tapFunction: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                  ValueCard(
                    color: selectedGender == Gender.female
                        ? kActiveColorValueCard
                        : kInactiveColorValueCard,
                    childCard: IconCard(
                      icon: FontAwesomeIcons.venus,
                      textCard: "MUJER",
                    ),
                    tapFunction: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ],
              ),
            ),
            ValueCard(
              color: kActiveColorValueCard,
              childCard: SliderCard(
                label: "PESO",
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(
                    color: kActiveColorValueCard,
                    childCard: null,
                  ),
                  ValueCard(
                    color: kActiveColorValueCard,
                    childCard: null,
                  ),
                ],
              ),
            ),
            Container(
              height: kHeightButtomContainer,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kColorButtom,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
