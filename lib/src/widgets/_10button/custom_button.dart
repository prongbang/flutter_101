import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final String text;

  const CustomButton({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.text,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MaterialButton(
          color: color,
          textColor: textColor,
          height: 60,
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
