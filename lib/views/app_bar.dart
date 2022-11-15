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
          icon: Icon(Icons.menu,),
          ),
        title: Text('Home'),
         actions: [
          IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.shopping_bag,),
          ),
          IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.search,),
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
          children: [
            Text("App Bar Screen", style: TextStyle(fontSize: 20.0),),
            Text("Welcome", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}