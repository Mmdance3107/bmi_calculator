import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'navigation_widget.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.feedBack, required this.bmiResult,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String feedBack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15.0,),
                  Text(resultText.toUpperCase(), style: kStatusTextStyle,),
                  SizedBox(height: 20.0,),
                  Text(bmiResult, style: kAmountTextStyle,),
                  Text('Normal BMI range:', style: kLabelTextStyle),
                  SizedBox(height: 5.0,),
                  Text('18,5 - 25 kg/m2', style: kDescriptionTextStyle,),
                  SizedBox(height: 50.0,),
                  Text(feedBack, textAlign: TextAlign.center, style: kDescriptionTextStyle,),
                ],
              ),
            ),
          ),

          NavigationWidget(
            textValue: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}