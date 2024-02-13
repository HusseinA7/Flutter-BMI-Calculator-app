 import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
 
class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String? title;
  const CustomButton({super.key, required this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Text(
        title ?? 'Calculate',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
      ),
      fillColor: kBottomContainerColor,
      constraints: BoxConstraints.tightFor(
        width: double.infinity,
        height: 56,
      ),
    );
  }
}