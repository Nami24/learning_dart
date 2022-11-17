import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learningdart/Utils/colors.dart';
import 'package:learningdart/Utils/global_variable.dart';

class NavigateBar extends StatefulWidget {
  const NavigateBar({super.key});

  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  int _page =0;
  late PageController pageController;

     @override
    void initState() {
      super.initState();
      pageController = PageController();
    }

    @override
    void dispose() {
      super.dispose();
    }

  // ignore: non_constant_identifier_names
  void navigationTapped(int Page) {
    pageController.jumpToPage(Page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page= page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Bottom Navigation'), 
      ),  
      body: PageView(
        physics:  const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: mobileBackgroundColor,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color:_page == 0 ? primaryColor: secondaryColor,
          ),
          label: '',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color:_page == 1 ? primaryColor: secondaryColor,),
          label: '',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle, color:_page == 2 ? primaryColor: secondaryColor,),
          label: '',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color:_page == 3 ? primaryColor: secondaryColor,),
          label: '',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color:_page == 4 ? primaryColor: secondaryColor,),
          label: '',
          backgroundColor: primaryColor,
        ),
      ],
      onTap: navigationTapped,
      ),  
    );
  }
}