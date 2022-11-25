import 'package:flutter/material.dart';
import 'package:learningdart/Responsive/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            child: Padding(
              padding: EdgeInsets.only(top: animate ? 150 : 0),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: animate ? 1 : 0,
                child: const Image(
                    image: AssetImage("assets/images/splash_image.jpg"),
                          ),
              ),
              ),
            ), 
         AnimatedPositioned(
            top: 50,
            left: animate ? 25 : - 80,
              duration: const Duration(milliseconds: 1600),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
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
            ),
        ],
      ),
    );
  }
  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true,);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
}

}



