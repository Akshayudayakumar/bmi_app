import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants.dart';

class Category extends StatelessWidget {
  final String text;
  final String subText;
  const Category({super.key, required this.text, required this.subText});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: height * 0.2,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kActiveCardColour,
              borderRadius: BorderRadius.circular(10),
            ),
              child: Center(
                child: Text(
                  text,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: resultTextStyle,
                ),
              ),
          ),
          SizedBox(height: 15.h),
          Align(alignment: Alignment.centerLeft,
              child: Text('Tip',style:tipTextStyle),),
          SizedBox(height: 6.h),
          Container(height: height * 0.2,width:width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kActiveCardColour,
              borderRadius: BorderRadius.circular(10),
            ),
              child: Text(
                subText,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: subTextStyle,
              ),
            ),
        ],
      ),
    );
  }
}
