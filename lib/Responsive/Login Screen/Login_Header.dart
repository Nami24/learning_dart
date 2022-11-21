import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
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
          Text('Welcome Back,', style: Theme.of(context).textTheme.headline1,),
          Text('Explore In Your Own Way', style: Theme.of(context).textTheme.headline4,),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}