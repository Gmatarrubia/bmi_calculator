import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  static const int primeColor = 0xFF0A0E21;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(primeColor),
        backgroundColor: Color(primeColor),
        scaffoldBackgroundColor: Color(primeColor),
        accentColor: Color(primeColor),
      ),
      home: InputPage(),
    );
  }
}
