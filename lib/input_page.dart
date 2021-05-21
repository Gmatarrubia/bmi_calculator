import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_card.dart';
import 'value_card.dart';
import 'slider_card.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'two_button_card.dart';
import 'results_page.dart';
import 'imc_calculator.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  int weight = 70;
  int height = 180;

  void updateWeight(int newWeight) {
    weight = newWeight;
  }

  void updateHeight(int newHeight) {
    height = newHeight;
  }

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
                label: "Altura",
                initialValue: height,
                onUpdate: (height) {
                  updateHeight(height);
                },
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(
                    color: kActiveColorValueCard,
                    childCard: TwoButtonsCard(
                      label: "Peso",
                      units: "kg",
                      initialValue: weight,
                      onUpdate: (weight) {
                        updateWeight(weight);
                      },
                    ),
                  ),
                  ValueCard(
                    color: kActiveColorValueCard,
                    childCard: TwoButtonsCard(
                      label: "Edad",
                      units: "",
                      initialValue: 30,
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              label: "CALCULAR",
              ontap: () {
                ImcCalculator calc = ImcCalculator(
                  weight: weight.toDouble(),
                  height: height.toDouble(),
                );
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultsPage(calc)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
