import 'package:flutter/material.dart';

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

// Header

class SignupHeader extends StatelessWidget {
  const SignupHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/img3.jpg", height: size.height *0.3),
          Text('Hello Friends,,', style: Theme.of(context).textTheme.headline1,),
          Text('Create Your Profile', style: Theme.of(context).textTheme.headline4,),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}

// Main Form

class SignupForm extends StatelessWidget {
  const SignupForm({
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
                labelText: 'Full Name',
                hintText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0 -20,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'E-Mail',
                hintText: 'E-Mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0 -20,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Mobile No.',
                hintText: 'Mobile No.',
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
            const SizedBox(height: 50.0 -20,),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Text('Signup'.toUpperCase(),
                  ),
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
}

// Footer

class SignupFooter extends StatelessWidget {
  const SignupFooter({
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
              text: "Already have an account?",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black, fontFamily: 'poppins'),
              children: [
                TextSpan(
                  text: " Login",
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