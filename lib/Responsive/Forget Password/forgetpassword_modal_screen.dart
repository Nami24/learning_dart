import 'package:flutter/material.dart';
import 'package:learningdart/Responsive/Forget%20Password/forgetPassword_mail_screen.dart';
import 'package:learningdart/Responsive/Forget%20Password/forgetpassword_mobile_screen.dart';
import 'package:learningdart/Responsive/Forget%20Password/forgetpassword_screen.dart';

class ForgetScreenModal {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                context: context, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                builder: (context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Make Selection!', style: Theme.of(context).textTheme.headline2),
                      Text('Select one of the options given below to reset your password', style: Theme.of(context).textTheme.bodyText2),
                      const SizedBox(height: 30.0,),
                      ForgetpasswordScreen(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordMailScreen()));
                        },
                        title: 'E-mail',
                        btnIcon: Icons.mail_outline_rounded, 
                        subTitle: 'Reset via E-mail Verification',
                      ),
                      const SizedBox(height: 30.0,),
                      ForgetpasswordScreen(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordMobileScreen()));
                        },
                        title: 'Mobile No.',
                        btnIcon: Icons.mobile_friendly_rounded, 
                        subTitle: 'Reset via Phone Verification',
                      ),
                      const SizedBox(height: 20.0,),

                    ],
                  ),
                )
              );
  }
}