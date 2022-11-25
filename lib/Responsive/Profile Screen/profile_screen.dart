import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learningdart/Responsive/Profile%20Screen/Profile_edit.dart';
import 'package:learningdart/Responsive/Profile%20Screen/profile_menu.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);}, 
        icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text('Profile', style: TextStyle(fontSize: 24.0)),
      ),
      body: SingleChildScrollView(
        child:Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100), 
                      child: const Image(image: AssetImage("assets/images/profile_img.jpg"))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black,
                        ),
                      child: const Icon(LineAwesomeIcons.alternate_pencil, size:20.0, color: Colors.white) ,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Text('Namira Shaikh', style: Theme.of(context).textTheme.headline4,),
              Text('namira.hopesindia@gmail.com', style: Theme.of(context).textTheme.bodyText2,),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => 
                  const ProfileEdit()
                  ),
                  );
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: BorderSide.none,
                    shape: const StadiumBorder()
                  ),
                  child: const Text('Edit Profile',),
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),

              // Menues
              ProfileMenu(title: 'Settings',icon: LineAwesomeIcons.cog, onPressed: () {  },),
              ProfileMenu(title: 'Account Details',icon: LineAwesomeIcons.wallet, onPressed: () {  },),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              ProfileMenu(title: 'Information',icon: LineAwesomeIcons.info, onPressed: () {  },),
              ProfileMenu(title: 'Logout',icon: LineAwesomeIcons.alternate_sign_out, textColor: Colors.red, 
              endIcon: false, onPressed: () {  },),
            ],
          ),
        ),
        ),
    );
  }
}

