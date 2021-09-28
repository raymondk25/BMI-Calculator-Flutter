import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
     _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getResultTitle() {
    if (_bmi >= 25)
      return 'Overweight BMI range:';
    else if (_bmi > 18.5)
      return 'Normal BMI range:';
    else
      return 'Underweight BMI range:';
  }

  String getInfo() {
    if (_bmi >= 25)
      return '25.0 - 30 kg/m2';
    else if (_bmi > 18.5)
      return '18.5 - 25 kg/m2';
    else
      return 'Below 18.5 kg/m2';
  }

  String getInterpretation(){
    if (_bmi >= 25)
      return 'You have higher than normal body weight. Try to exercise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
