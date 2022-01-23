import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/reuseable_card.dart';
import 'package:flutter_app/styleling_data.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.resultCommentText,
      required this.resultDescriptionText,
      required this.bmiResult});
  final String bmiResult;
  final String resultCommentText;
  final String resultDescriptionText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATER'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'YOUR RUSELT',
                style: KresultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusebleCard(
              clr: KreuseableCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultCommentText, style: KnormalTextStyle),
                  Text(bmiResult, style: KmainResultStyle),
                  Text(
                    resultDescriptionText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
              color: KbuttomBarColor,
              width: double.infinity,
              height: KbuttomBarHeight,
            ),
          ),
        ],
      ),
    );
  }
}
