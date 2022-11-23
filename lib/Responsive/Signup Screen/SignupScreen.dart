import 'package:flutter/material.dart';
import 'package:learningdart/Responsive/Signup%20Screen/signup_footer.dart';
import 'package:learningdart/Responsive/Signup%20Screen/signup_form.dart';
import 'package:learningdart/Responsive/Signup%20Screen/signup_header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              SignupHeader(size: size),
              const SignupForm(),
              const SignupFooter(),
            ],
          )
        )),
    );
  }
}



