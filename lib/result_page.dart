import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText});

  // final String bmiResult = '23.0';
  // final String resultText = 'normal';
  // final String interpretation = 'You have a normal body weight. Good job!';
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'RE-CALCULATE YOUR BMI',
                style: kLargeButtonTextStyle,
              ),
            ),
            color: kSecondaryColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomPanelHeight,
          ),
        ],
      ),
    );
  }
}
