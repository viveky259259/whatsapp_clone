import 'package:flutter/material.dart';

class CustomTextBoxWidget extends StatelessWidget {
  final String text;
  final Color color;

  CustomTextBoxWidget(this.text,this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(color: color),
        child: Text(text));
  }
}
