import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconName extends StatelessWidget {
  IconName({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.sp,
          color: Colors.white,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
