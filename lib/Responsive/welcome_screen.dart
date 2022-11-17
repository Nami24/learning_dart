import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/img2.jpg", height: height * 0.6),
            Column(
              children: [
               Text('Build App', style: Theme.of(context).textTheme.headline5,),
               const SizedBox(
                height: 5,
               ),
               Text("Let's put your efforts on the development highway", style: Theme.of(context).textTheme.bodyText1,
               textAlign: TextAlign.center,
               ),
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: OutlinedButton(
                    onPressed: () {}, 
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: const Color(0xff272727),
                      side: const BorderSide(color: Color(0xff272727),
                      ),
                      padding: const EdgeInsets.only(top:15.0, left: 30, right: 30, bottom: 15.0)
                    ),
                    child: Text('Login'.toUpperCase()),
                    ),
                  ),
                  const SizedBox(
                      width: 10.0,
                    ),
                  Flexible(
                    child: ElevatedButton(
                    onPressed: () {}, 
                     style: OutlinedButton.styleFrom(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(),
                      backgroundColor: const Color(0xff272727),
                      foregroundColor: const Color(0xffffffff),
                      side: const BorderSide(color: Color(0xff272727),
                      ),
                      padding: const EdgeInsets.only(top:15.0, left: 30, right: 30, bottom: 15.0)
                    ), 
                    child: Text("Signup".toUpperCase()),
                    ),
                    ),
                ],
               )
              ],
            ),
        )
    );
  }
}

