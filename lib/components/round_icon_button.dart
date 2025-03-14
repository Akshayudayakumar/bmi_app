import 'package:flutter/material.dart';
import '../utils/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 3,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 45,
        height: 45,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFFFFFFFF),
      textStyle: TextStyle(color:kActiveCardColour),
      child: Icon(icon),
    );
  }
}
