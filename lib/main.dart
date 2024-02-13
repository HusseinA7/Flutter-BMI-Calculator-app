import 'package:bmi_calculator/screens/Home.dart';
import 'package:flutter/material.dart';

void main(){

runApp(BMICalculatorApp());

}
class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
       primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: HomePage(),
 
    );
  }
}