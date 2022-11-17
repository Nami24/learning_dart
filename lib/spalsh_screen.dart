import 'package:flutter/material.dart';
import 'package:learningdart/Screens/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            child: Padding(
              padding: EdgeInsets.only(top: 150),
              child: const Image(
                  image: AssetImage("assets/images/splash_image.jpg"),
                        ),
              ),
            ), 
         
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
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


