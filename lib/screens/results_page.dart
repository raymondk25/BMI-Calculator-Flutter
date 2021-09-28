import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.resultText, this.resultTitle, this.resultInfo, this.interpretation});

  final String bmiResult;
  final String resultText;
  final String resultTitle;
  final String resultInfo;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20.0, left: 15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(resultText.toUpperCase(), style: kResultTextStyle),
                    ),
                    Text(bmiResult, style: kBMITextStyle),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(resultTitle, style: kLabelTextStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Text(resultInfo, style: kResultInfoTextStyle),
                    ),
                    Text(interpretation,
                        textAlign: TextAlign.center, style: kBodyTextStyle),
                  ],
                ),
              ),
            ),
            Expanded(
                child: BottomBotton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )),
          ],
        ));
  }
}
