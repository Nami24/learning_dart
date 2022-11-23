import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({
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
          Text('Hello Friends,,', style: Theme.of(context).textTheme.headline1,),
          Text('Create Your Profile', style: Theme.of(context).textTheme.headline4,),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}