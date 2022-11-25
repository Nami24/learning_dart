import 'package:flutter/material.dart';


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
        Icons.arrow_back,
        color: Colors.black,
      ),
      elevation: 0,
      actions: [
        Container(
          margin: const EdgeInsets.all(20),
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
