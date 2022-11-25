import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.title, 
    required this.icon, 
    required this.onPressed,
    this.endIcon = true, 
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final bool endIcon;
  final Color? textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black.withOpacity(0.1),
          ),
        child: Icon(icon, color: Colors.black),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
      trailing: endIcon? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey,
          ),
        child: const Icon(LineAwesomeIcons.angle_right, size:18.0, color: Colors.grey) ,
      ) : null,
    );
  }
}