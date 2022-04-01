import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/counters.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {

  final String? bmiResult;
  final String? bmiAnswer;
  final String? bmiInterpretation;

  ResultPage({this.bmiResult, this.bmiAnswer, this.bmiInterpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI RESULT'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveColorCard,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiAnswer ?? '',
                      style: kSecondLabelTextStyle,
                    ),
                    Text(
                      bmiResult ?? '',
                      style: kBMITextSyle,
                    ),
                    Text(
                      bmiInterpretation ?? '',
                      textAlign: TextAlign.center,
                      style: kBMIBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonText: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
