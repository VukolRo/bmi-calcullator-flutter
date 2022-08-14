import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: kSecondaryColor,
          primary: kPrimaryColor,
        ),
      ),
      home: InputPage(),
    );
  }
}
