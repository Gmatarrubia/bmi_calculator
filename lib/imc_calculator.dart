import 'dart:math';

import 'package:flutter/material.dart';

class ImcCalculator {
  final double weight;
  final double height;

  double _imc;
  var advises = {
    'Sobrepeso': """Recuerda llevar una vida saludable,\r
haciendo deporte y controlando la dieta.""",
    'Normal': "Perfecto! Sigue Así.",
    'Delgado': "Refuerza la alimentación para ganar peso."
  };

  ImcCalculator({@required this.weight, @required this.height}) {
    _imc = weight / pow(height / 100, 2);
  }

  String getImc() {
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25.0) {
      return "Sobrepeso";
    } else if (_imc > 18.0) {
      return "Normal";
    } else {
      return "Delgado";
    }
  }

  String getAdvise() {
    return advises[getResult()];
  }
}
