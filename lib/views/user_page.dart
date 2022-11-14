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
      body: const Center(
        child: Text('hello'),
        ),
    );
  }
}