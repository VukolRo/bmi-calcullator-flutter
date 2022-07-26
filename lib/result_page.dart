import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  final String result = 'some result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Text(
            'YOUR RESULT',
            style: TextStyle(fontSize: 30.0),
          ),
          Container(
            color: kInactiveCardColor,
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        result,
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Text(
                        '22.0',
                        style: TextStyle(
                            fontSize: 75.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Text('normal BMI ramge'),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Text('18.5 - 25 kg/m2'),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: Text(
                        'You have a normal body weight. Good job!',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                    Container(
                        color: kPlusMinusButtonColor,
                        margin: EdgeInsetsDirectional.all(50.0),
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Save result',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ))
                  ],
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/result');
                    },
                    child: Text(
                      'CALCULATE YOUR BMI',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  color: kSecondaryColor,
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: kBottomPanelHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
