import 'package:flutter/material.dart';

class CustomTextRegister extends StatelessWidget {
  const CustomTextRegister({super.key,required this.text,required this.textColor, required this.onTap});
 final String text;
  final String textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return         Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.grey.shade700),
        ),
        GestureDetector(
          onTap:onTap,
          child:  Text(
            textColor,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );

  }
}
