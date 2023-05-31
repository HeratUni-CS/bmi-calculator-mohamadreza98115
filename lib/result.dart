import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusible_widget.dart';
import 'bottom_button.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: TitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusibleWidget(
              color: activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("NORMAL", style: ResultTextStyle),
                  Text("25", style: BmiTextStyle),
                  Text("You are good to go",
                      textAlign: TextAlign.center, style: BodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
              label: "RECALCULATE",
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
