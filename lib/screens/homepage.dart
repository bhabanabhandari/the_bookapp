import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:justatry/colors/color.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(
          //     bottom: Radius.circular(30),
          //   ),
          // ),
          backgroundColor: Color.fromARGB(255, 26, 85, 127),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/profile.png')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      // Text('Dear User,')
                    ],
                  )
                ],
              ),
            ),
          ),
          expandedHeight: 50,
          flexibleSpace: FlexibleSpaceBar(background: Container()),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: ClipRRect(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 150,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
      ]),
      backgroundColor: Colors.deepPurple[100],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: primary,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.menu_book),
            title: Text('Books'),
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
            activeColor: Color.fromARGB(255, 30, 30, 188),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Color.fromARGB(255, 6, 8, 9),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
