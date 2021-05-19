import 'package:flutter/material.dart';

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
          children: <Widget> [
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(Color(0xFF1D1E33)),
                  ValueCard(Color(0xFF1D1E33)),
                ],
              ),
            ),
            ValueCard(Color(0xFF1D1E33)),
            Expanded(
              child: Row(
                children: <Widget>[
                  ValueCard(Color(0xFF1D1E33)),
                  ValueCard(Color(0xFF1D1E33)),
                ],
              ),
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
