// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:project/booknow.dart';
import 'package:project/feedback.dart';
import 'package:project/home.dart';
import 'package:project/location.dart';
import 'package:project/profile.dart';
import 'package:project/search.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});
  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  List<TabItem> items = [
    TabItem(
      icon: Icons.home,
      title: 'Home',
    ),
    TabItem(
      icon: Icons.feedback,
      title: 'Feedback',
    ),
    TabItem(
      icon: Icons.place,
      title: 'Location',
    ),
    TabItem(
      icon: Icons.account_box,
      title: 'profile',
    ),
  ];
  List screen = [
    home(),
    FeedBack(),
    location(),
    profile(),
  ];
  int visit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomBarFloating(
          items: items,
          backgroundColor: Colors.black87,
          color: Colors.white,
          colorSelected: Color.fromARGB(222, 191, 76, 76),
          indexSelected: visit,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
        body: screen[visit]);
  }
}
