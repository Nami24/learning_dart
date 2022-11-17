import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.menu,),
          ),
        title: const Text('Home'),
         actions: [
          IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.shopping_bag,),
          ),
          IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.search,),
          ),
         ],
         elevation: 10,
         centerTitle: true,
         shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ) ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("App Bar Screen", style: TextStyle(fontSize: 20.0),),
            const Text("Welcome", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}