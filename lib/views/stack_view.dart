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
        backgroundColor: Colors.grey.shade800,
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
                color: Colors.black38,
                offset: Offset(0, 2),
                blurRadius: 10,
              )
            ],
            image: DecorationImage(
              image: AssetImage('assets/images/img1.jpeg'),
              fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0),
              ),
          ),

          child: Stack(
            children: [ 
            Positioned(
              top: 10,
              child: Text("Project Shifa",
              style: TextStyle(color: Colors.black, fontSize: 22)),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Text("Date: 10-11-2022",
              style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text("Time: 04:00 PM",
              style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
          ],
          ),
        ),
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