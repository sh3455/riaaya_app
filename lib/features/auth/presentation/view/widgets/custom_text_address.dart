import 'package:flutter/material.dart';

class CustomTextAddress extends StatelessWidget {
  const CustomTextAddress({super.key, required this.textAddress});
final String textAddress;
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(textAddress));

  }
}
