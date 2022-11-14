import 'package:flutter/material.dart';

class FontView extends StatelessWidget {
  const FontView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello!'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          children: [
            Text(
              'Hello Mimi',
              style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey,
              fontFamily: 'IndieFlower',
            ),
            ),
            Text(
              'Hello COCO',
              style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey,
              fontFamily: 'Poopins',
            ),
            ),
          ],
        ),
      ),
    );
  }
}  