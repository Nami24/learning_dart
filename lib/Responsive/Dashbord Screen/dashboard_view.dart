import 'package:flutter/material.dart';
import 'package:learningdart/Responsive/Dashbord%20Screen/Dashboard_option.dart';
import 'package:learningdart/Responsive/Dashbord%20Screen/dashboard_banner.dart';
import 'package:learningdart/Responsive/Dashbord%20Screen/dashboard_searchbox.dart';
import 'package:learningdart/Responsive/Dashbord%20Screen/dashboard_topcourse.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashboardAppbar(),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey, explore your idea.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Start Coding',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 20.0,
            ),
            DashboardSearchbox(),
            const SizedBox(
              height: 20.0,
            ),

            //options
            DashboardOptions(),
            const SizedBox(height: 20.0,
            ),
            // Banners
            DashboardBanner(),
            const SizedBox(height: 20.0,),

            // top course
            Text('Top Course', style: Theme.of(context).textTheme.headline4?.apply(fontSizeFactor: 1.2),),
            DashboardTopcourse()
          ],
        ),
      )),
    );
  }
}



class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Dashboard',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      elevation: 0,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(55, 30);
}
