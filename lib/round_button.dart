import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData iconData;
  final void Function() onPressed;
  RoundButton({required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color(0xFF1C1F32),
      shape: CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      child: Icon(
        iconData,
        size: 30,
      ),
    );
  }
}
