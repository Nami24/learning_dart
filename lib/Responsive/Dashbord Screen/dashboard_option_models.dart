import 'package:flutter/material.dart';

class DashboardOptionModels {
  final String title;
  final String heading;
  final String subHeading;
  final voidCallback? onPress;

  DashboardOptionModels(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardOptionModels> list = [
    DashboardOptionModels("JS", "Java Script", "10 Lessons", null ),
    DashboardOptionModels("F", "flutter", "100 Lessons", null ),
    DashboardOptionModels("H", "HTML", "11 Lessons", null ),
    DashboardOptionModels("K", "Kotliin", "8 Lessons", null ),
    DashboardOptionModels("P", "Python", "20 Lessons", null ),
  ];
}

class voidCallback {
}