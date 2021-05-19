import 'package:flutter/material.dart';

const Color activeColorValueCard = Color(0xFF1D1E33);
const Color colorButtom = Color(0xFFEB1555);
const double heightButtomContainer = 70.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(activeColorValueCard),
                  ValueCard(activeColorValueCard),
                ],
              ),
            ),
            ValueCard(activeColorValueCard),
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(activeColorValueCard),
                  ValueCard(activeColorValueCard),
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

class ValueCard extends StatelessWidget {
  final Color color;
  ValueCard(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
