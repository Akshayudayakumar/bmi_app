import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final Widget interpretation;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h,left: 20.w),
              child: Text(
                'RESULT',
                style: result2TextStyle,
              ),
            ),
            SizedBox(height: 15.h),
            Container(height:height *0.07,
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: kActiveCardColour,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Center(
                child: Text(
                  resultText.toUpperCase(),
                  style:result3TextStyle,
                ),
              ),
            ),
              SizedBox(height: 20.h),
      Align(alignment: Alignment.center,
        child: Container(height: 100.h,width: 100.h,
          decoration: BoxDecoration(
            color: kActiveCardColour,
            borderRadius: BorderRadius.circular(10),
          ),
          child:  Center(
            child: Text(
              bmiResult,
              style:kBMITextStyle,
            ),
          ),
         ),),
               SizedBox(height: 15.h),
               interpretation,
               Spacer(),
               Align(alignment: Alignment.bottomCenter,
                 child: BottomButton(
                   buttonTitle: 'RE-CALCULATE',
                   onTap: () {
                     Navigator.pop(context);
                   },
                 ),
               ),
          ],
        ),
      ),
    );
  }
}
