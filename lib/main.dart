import 'dart:async';

import 'package:bmi_calculator/screen/home_page.dart';
import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
  MaterialApp(
    home: ScreenUtilInit(designSize: Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context,child) => BMICalculator(),
    ),
    debugShowCheckedModeBanner: false,
    ),
);

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => HomePage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color:kActiveCardColour),
        child: Center(
          child: Image.asset(
            'assets/logo/logo.png',
            height: 260,
            width: 270,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
