import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons View'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(   
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              size: 24.0,
            ),
            label: const Text('Download'),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton.icon(     
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              size: 24.0,
            ),
            label: const Text('Download'),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon( 
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              size: 24.0,
            ),
            label: const Text('Download'),
          ),
          const SizedBox(
            height: 50,
          ),
          FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.amber,
          child: Text('Click'),
          ),
        ],
    ),
      )
      // 
      // 
      // 
      // 
      // Column(
      //   children: [
      //     const Center(
      //       child: Icon(
      //         Icons.airport_shuttle,
      //         color: Colors.lightBlue,
      //         size: 50.0,
      //       ),
      //     ),
      //     IconButton(
      //     onPressed: () {
      //       print('you clicked me');
      //     },
      //     icon: const Icon(Icons.alternate_email),
      //     color: Colors.amber,
      //   ),

      //   ],
      // ),
      

    );
  }
}

