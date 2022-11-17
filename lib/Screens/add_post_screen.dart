import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final User user = Provider.of<UserProvider>(context).getUser;
    
    return const Scaffold(
       body: Center(
        child: Text('Add Post'),
      ),
    );
  }
}

