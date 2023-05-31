import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  String label;
  void Function() onPressed;

  BottomButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 80,
        color: buttomContainerColor,
        margin: EdgeInsets.only(top: 10),
        child: Center(
            child: Text("CALCULATE YOUR BMI", style: LargeTextButtonStyle)),
      ),
    );
  }
}
