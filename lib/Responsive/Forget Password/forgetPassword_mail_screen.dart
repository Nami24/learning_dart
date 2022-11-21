import 'package:flutter/material.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 30 *4),
              Image.asset("assets/images/forgot-password.png", height: 100.0),
              const SizedBox(height: 20),
              Text("Forget Password", style: Theme.of(context).textTheme.headline5,),
              Text("Select one of the options given below to reset your password", style: Theme.of(context).textTheme.bodyText1,),
              const SizedBox(height: 30),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline_outlined),
                      labelText: 'E-mail',
                      hintText: 'E-mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  SizedBox(
                    width: 100.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        ),
                    child: const Text('Next'),
                    ),
                  ),
                  ],
                ),
                ),
            ],
          ),
        ),
      )
    );
  }
}