import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:justatry/colors/color.dart';
import 'package:justatry/screens/homepage.dart';
import 'package:justatry/screens/library.dart';
import 'package:justatry/screens/navigation_drawer.dart';
import 'package:justatry/screens/settiing.dart';
import 'package:justatry/screens/notification.dart';

class NavMenu extends StatefulWidget {
  const NavMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<NavMenu> createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {
  int currentIndex = 0;
  List<Widget> _listPages = [
    Homepage(),
    Library(),
    Setting(),
    NavigationDrawer()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPages[currentIndex],
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true,
          itemCornerRadius: 8,
          curve: Curves.easeInBack,
          onItemSelected: (index) => setState(() {
                currentIndex = index;
              }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: primary,
              textAlign: TextAlign.center,
            ),
            // BottomNavyBarItem(
            //   icon: Icon(
            //     Icons.search,
            //   ),
            //   title: Text(
            //     'Search',
            //   ),
            //   activeColor: Color.fromARGB(255, 201, 16, 170),
            //   textAlign: TextAlign.center,
            // ),
            BottomNavyBarItem(
              icon: Icon(Icons.stacked_bar_chart),
              title: Text('Library'),
              activeColor: Color.fromARGB(255, 100, 80, 219),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.notifications_none,
              ),
              title: Text(
                'Notification',
              ),
              activeColor: Color.fromARGB(255, 9, 79, 107),
              textAlign: TextAlign.center,
            ),

            BottomNavyBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: ImageIcon(AssetImage('assets/logo.png'))),
              title: Text(
                'Profile',
              ),
              activeColor: Color.fromARGB(255, 9, 79, 107),
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }
}
