import 'package:flutter/material.dart';
import 'constants.dart';

class IconContainer extends StatelessWidget {
  IconContainer({required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 65,
          color: Color(0xFF868892),
        ),
        SizedBox(
          height: 10,
        ),
        Text(label, style: labelStyle),
      ],
    );
  }
}
