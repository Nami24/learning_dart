import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 30.0 -20,),
        SizedBox(
          width: double.infinity,
          height: 50.0,
          child: OutlinedButton.icon(
            icon: Image.asset("assets/images/google.png", width: 20.0,),
            onPressed: () {}, 
            label: const Text('Sign-in with Google', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            style: OutlinedButton.styleFrom(side: const BorderSide(width: 1.0, color: Colors.black),),
            ),
            ),
        const SizedBox(height: 30.0 -20,),
        TextButton(
          onPressed: () {}, 
          child: const Text.rich(
            TextSpan(
              text: "Don't have an account?",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black, fontFamily: 'poppins'),
              children: [
                TextSpan(
                  text: " Signup",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
              ),
              ),
          ),
      ],
    );
  }
}