import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onPressed;


  ReusableCard({this.child, this.selected = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected == true ? kActiveCardColour : kInactiveCardColor,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}