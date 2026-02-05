import 'package:flutter/material.dart';
import 'package:riaaya_app/features/auth/presentation/view/pages/login/login_page.dart';
import 'package:riaaya_app/features/auth/presentation/view/pages/register/register_screen.dart';
import 'package:riaaya_app/features/auth/presentation/view/widgets/custom_text_register.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../custom_button_social.dart';
import '../custom_text_field_login.dart';

class NurseRegisterLayout extends StatelessWidget {
  const NurseRegisterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height:size.height*0.03 ),
        CustomTextFieldLogin(hinText: "Full Name"),
        SizedBox(height:size.height*0.03 ),
        CustomTextFieldLogin(hinText: "Data of Birthday"),
        SizedBox(height:size.height*0.03 ),
        CustomTextFieldLogin(hinText: "Location"),
        SizedBox(height:size.height*0.03 ),
        CustomTextFieldLogin(hinText: "Experience"),
        SizedBox(height:size.height*0.03 ),
        CustomTextFieldLogin(hinText: "Phone"),
        SizedBox(height:size.height*0.03 ),
        CustomTextFieldLogin(hinText: "Email"),
        SizedBox(height:size.height*0.03),
        CustomTextFieldLogin(hinText: "Password"),
        SizedBox(height:size.height*0.03),
        CustomTextFieldLogin(hinText: "Confirm Password"),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
            },
            child: const Text(
              "Forgot password?",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(height:size.height*0.03),
        CustomButton(text: "Create Account"),
        SizedBox(height: size.height*0.05,),
        CustomButtonSocial(textSocial: "Continue with Google", icon: Icons.g_mobiledata),
        SizedBox(height:size.height*0.01),
        CustomTextRegister(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return LoginPage();
            },));
          },
            text: "Already have an account? ", textColor: "Login")


      ],
    );
  }
}
