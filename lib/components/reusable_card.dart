import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.onPress,{required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;
  VoidCallback? onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: cardChild,
      ),
    );
  }
}
