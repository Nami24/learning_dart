import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Edit Profile', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          onPressed: () {Navigator.pop(context);}, 
          icon: const Icon(LineAwesomeIcons.angle_left)),
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
                      child: const Icon(LineAwesomeIcons.camera, size:20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      labelText: 'Full Name',
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                      ),
                      ),
                    ),
                    const SizedBox(height: 30.0 -20,),
                    TextFormField(
                      decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'E-Mail',
                      hintText: 'E-Mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                    const SizedBox(height: 30.0 -20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'Mobile No.',
                        hintText: 'Mobile No.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 30.0 -20,),
                    TextFormField(
                      decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: null,
                      icon: Icon(Icons.remove_red_eye_sharp),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide.none,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Edit Profile', style: TextStyle(color: Colors.white, fontSize: 18.0),)),
                )
                  ],
                ))
            ],
        ),
        ),
      ),
    );
  }
}