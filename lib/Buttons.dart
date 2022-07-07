import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String ButtonText;
  MyButton(this.color, this.ButtonText, this.textColor);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: color,
          child: Center(
            child: Text(
              ButtonText,
              style: TextStyle(color: textColor, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
