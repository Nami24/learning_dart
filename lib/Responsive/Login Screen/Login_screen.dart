import 'package:flutter/material.dart';
import 'package:learningdart/Responsive/Login%20Screen/Login_Header.dart';
import 'package:learningdart/Responsive/Login%20Screen/Login_footer.dart';
import 'package:learningdart/Responsive/Login%20Screen/login_form.dart';

import '../Forget Password/forgetpassword_modal_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(size: size),
              const LoginForm(),
              const LoginFooter(),
             
            ],
          ),
        ),
        ),
    );
  }
}






