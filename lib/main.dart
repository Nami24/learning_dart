import 'package:flutter/material.dart';
import 'package:learningdart/Utils/theme_colors.dart';
import 'main_drawer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeColor.lightTheme,
      darkTheme: ThemeColor.darkTheme,
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Center(
        child: 
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Text('My Demo', style: Theme.of(context).textTheme.headline5,),
              Text("Let'Go", style: Theme.of(context).textTheme.subtitle2,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
        ),
      drawer: const MainDrawer(),
    );
  }
}

