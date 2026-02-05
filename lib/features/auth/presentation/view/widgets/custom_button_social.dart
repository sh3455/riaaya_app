import 'package:flutter/material.dart';

class CustomButtonSocial extends StatelessWidget {
  const CustomButtonSocial({super.key,required this.textSocial, required this.icon});
  final String textSocial;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return         Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 40,),
          Text(textSocial,style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,

          ),)
        ],
      ),
    );

  }
}
