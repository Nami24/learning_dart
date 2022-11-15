import 'package:flutter/material.dart';
import 'list_view.dart';

class UserpageView extends StatelessWidget {
  final User user;
  const UserpageView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Column(
          children: [
             Image.network(user.urlAvatar,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover),
            const SizedBox(height: 16,),
            Text(user.username,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            ),
          ]
          ),
    );
  }
}