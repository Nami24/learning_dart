import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CODE_VERIFICATION', style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
            ),
            const SizedBox(height: 40.0,),
            const Text("Enter verification code sent at\nnamira.hopesindia@gmail.com", style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,),
            const SizedBox(height: 20.0,),
            const OTPTextField(
              textFieldAlignment: MainAxisAlignment.spaceAround,
              length: 5,
            ),
            // const SizedBox(height: 20.0,),
            // SizedBox(
            //   height: 30.0,
            //   width: 100.0,
            //   child: ElevatedButton(
            //     onPressed: () {}, 
            //     child: const Text('Next')),
            // )
          ],
        ),
      ),
    );
  }
}
