import 'package:flutter/material.dart';
import 'package:riaaya_app/core/widgets/custom_button.dart';
import 'package:riaaya_app/features/auth/presentation/view/widgets/custom_button_social.dart';
import '../../pages/register/register_screen.dart';
import '../custom_text_field_login.dart';
import '../custom_text_register.dart';

class ClientLoginLayout extends StatelessWidget {
  const ClientLoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height:size.height*0.03 ),
        CustomTextFieldLogin(hinText: "Email"),
         SizedBox(height:size.height*0.03),
        CustomTextFieldLogin(hinText: "Password"),
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
        CustomButton(text: "Login"),
        SizedBox(height: size.height*0.05,),
        CustomButtonSocial(textSocial: "Continue with Google", icon: Icons.g_mobiledata),
        CustomTextRegister(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return RegisterScreen();
              },));
            },
            text: "Don't have an account? ", textColor: "Register")
      ],
    );
  }
}
