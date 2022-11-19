import 'package:flutter/material.dart';

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



// Header

class LoginHeader extends StatelessWidget {
  const LoginHeader({
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
          Text('Welcome Back,', style: Theme.of(context).textTheme.headline1,),
          Text('Explore In Your Own Way', style: Theme.of(context).textTheme.headline4,),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}

// Main Form

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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, 
              child: const Text('Forget Password?')),
            ),
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
}

// Footer

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
              text: "Already have an account?",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.blue, fontFamily: 'poppins'),
              children: [
                TextSpan(
                  text: "Signup",
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