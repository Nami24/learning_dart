import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            child: Padding(
              padding: EdgeInsets.only(top: 150),
              child: Image(
                  image: AssetImage("assets/images/splash_image.jpg"),
                        ),
              ),
            ), 
         Positioned(
            top: 50,
            left: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome!!!', 
                  style: Theme.of(context).textTheme.headline4,),
                  Text('Learn Flutter Code', 
                  style: Theme.of(context).textTheme.headline5,),
                ],
              ),
            ),
        ],
      ),
    );
  }
}


