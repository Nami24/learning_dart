import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learningdart/Utils/colors.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final User user = Provider.of<UserProvider>(context).getUser;
    
    return Scaffold(
       body: Center(
        child: const Text('Add Post'),
      ),
    );
  }
}

