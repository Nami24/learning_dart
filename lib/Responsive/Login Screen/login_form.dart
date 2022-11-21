import 'package:flutter/material.dart';

import '../Forget Password/forgetpassword_modal_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0 -10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: 'E-Mail',
                hintText: 'E-Mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0 -20,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: null,
                 icon: Icon(Icons.remove_red_eye_sharp),
                 ),
              ),
            ),
            const SizedBox(height: 30.0 -20,),

            // Forget Button

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                ForgetScreenModal.buildShowModalBottomSheet(context);
              }, 
              child: const Text('Forget Password?'),
              ),
            ),

            //Login Button

            const SizedBox(height: 30.0 -20,),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Text('Login'.toUpperCase()),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  ),
              ),
            ),
          ],
        ),
      ));
  }
  
  void buildShowModalBottomSheet(BuildContext context) {}
}
