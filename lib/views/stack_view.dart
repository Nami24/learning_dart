import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 330,
            height: 450,
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                offset: Offset(0, 2),
                blurRadius: 10,
              )
            ],
            image: DecorationImage(
              image: AssetImage('assets/image.photo.jpg'),
              fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0),
              ),
          ),
        )
      ),
    );
  }
}





// Stack(
//           alignment: Alignment.center,
//           children: [
//             Container(
//               width: 300,
//               height: 200,
//               color: Colors.green,
//             ),
//             Container(
//               width: 200,
//               height: 100,
//               color: Colors.yellow,
//             ),
//             Container(
//               width: 100,
//               height: 50,
//               color: Colors.blue,
//             ),
//           ],
//         ),