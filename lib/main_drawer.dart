// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learningdart/views/font_view.dart';
import 'package:learningdart/views/list_view.dart';
import 'views/buttons_view.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
    );
  }
  
  buildHeader(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    color: Theme.of(context).primaryColor,
    child: const Text('Demo'),
  );

  buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
         leading: const Icon(Icons.list),
              title: const Text('List',
              style: TextStyle(
                fontSize: 18.0,
                ),
                ),
                onTap: () =>
                Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => 
                  ListsViewPage(title: Text('Lists')),
                  ),
                  ),
      ),
      ListTile(
         leading: const Icon(Icons.smart_button_sharp),
              title: const Text('Buttons',
              style: TextStyle(
                fontSize: 18.0,
                ),
                ),
                onTap: () => 
                Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => 
                  const ButtonsScreen()
                  ),
                  ),
      ),
      ListTile(
         leading: const Icon(Icons.font_download),
              title: const Text('Fonts',
              style: TextStyle(
                fontSize: 18.0,
                ),
                ),
                onTap: () => 
                Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => 
                  const FontView()
                  ),
                  ),
      ),
    ],
  );
}