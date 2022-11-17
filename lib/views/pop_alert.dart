import 'package:flutter/material.dart';

class PopAlertPage extends StatelessWidget {
  const PopAlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pop/Aletr'), 
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text('Pop-up Button'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(   
              onPressed: () {
                Login_page(context);
              },
              icon: const Icon(
                Icons.login,
                size: 24.0,
              ),
              label: const Text('Login'),
            ),
          ],
    ),
      ),
    );
  }
}


// ignore: non_constant_identifier_names
void Login_page (BuildContext context) {
  var popup = const AlertDialog(
    title: Center(child: Text('Login Successfully')),
    content: Text('Welcome Back'),
  );
  showDialog(context: context, builder: (BuildContext) => popup);
}
