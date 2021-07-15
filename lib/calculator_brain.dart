import 'dart:math';

import 'package:bmi_calculator/constants.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0.0;

  CalculatorBrain(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBmiResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return kOverweight;
    } else if (_bmi > 18.5) {
      return kNormal;
    } else {
      return kUnderWeight;
    }
  }
}
