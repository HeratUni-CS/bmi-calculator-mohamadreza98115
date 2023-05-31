import 'package:flutter/material.dart';

class ReusibleWidget extends StatelessWidget {
  ReusibleWidget({this.child, this.onPressed, required this.color});
  final Widget? child;
  final void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
