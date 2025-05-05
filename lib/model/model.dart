import 'dart:math';

import 'package:bmi_calculator/screen/widgets/category.dart';
import 'package:flutter/material.dart';


class BmiCalculation {
  BmiCalculation({required this.height, required this.weight});

  final int height;
  final int weight;

  double? bmi;

  String? calculateBmi() {
    bmi = weight / pow(height / 100, 2);
    return bmi?.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi! >= 30) {
      return 'Obese';
    } else if (bmi! >= 25) {
      return 'OverWeight';
    } else if (bmi! >= 18.5) {
      return 'Normal';
    }
    else {
      return 'UnderWeight';
    }
  }

  List<String>categories = [
    "You're slightly above the ideal weight range",
    "You're in the healthy range!",
    "You're slightly below the ideal weight range",
    "This indicates a higher amount of body fat that could pose a greater risk for serious health conditions like type 2 diabetes, heart disease, and certain cancers."
  ];
  List<String>tips = [
    "Small changes in diet and exercise can make a big difference",
    "Keep it up with a balanced diet,regular physical activity, and good sleep habits",
    "Consider a balanced diet with healthy calorie intake and muscle-strengthening exercises.",
    "Consult a healthcare provider or nutritionist. A structured weight loss plan may help."
  ];

  Widget interpretation(BuildContext context) {
    if (bmi! >= 30) {
      return Category(text:categories[3], subText: tips[3]);
    } else if (bmi! >= 25) {
      return Category(text:categories[0], subText: tips[0]);
    } else if (bmi! >= 18.5) {
      return Category(text:categories[1], subText: tips[1]);
    } else {
      return Category(text:categories[2], subText: tips[2]);
    }
  }
}
