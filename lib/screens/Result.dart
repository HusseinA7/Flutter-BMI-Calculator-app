import 'package:bmi_calculator/widgets/ReusableCard.dart';
import 'package:bmi_calculator/widgets/customButton.dart';
import 'package:flutter/material.dart';

class ResulScreen extends StatelessWidget {
  final double result;
  const ResulScreen({super.key, required this.result});

  String intranslateResul(){

    if(result > 0 && result < 18)
    return 'You are Underweight';
    else if (result > 19 && result < 25)
    return 'You are in good shape';
    else if (result > 26 && result < 29)
    return 'You are Overweight';
    else 
    return 'You are Obese';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              'Your Result',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade500,
                  fontSize: 30),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      result.toStringAsFixed(2),
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade500,
                          fontSize: 56),
                    ),
                  ),
                  SizedBox(height: 20,),
                   Center(
                    child: Text(
                      intranslateResul(),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400,
                          fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            onPressed: () => Navigator.pop(context),
            title: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
