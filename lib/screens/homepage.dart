import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:justatry/colors/color.dart';

import 'package:carousel_slider/carousel_slider.dart';
import '../colors/color.dart';
import 'navigation_drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
      drawer: NavigationDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primary,
        child: Icon(Icons.search),
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          snap: false,
          pinned: false,
          floating: true,
          expandedHeight: 70,
          backgroundColor: primary,
          leading: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _scaffoldKey.currentState?.openDrawer(),
                        child: Builder(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/profile.png')),
                                //borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          title: Text('Dear Shyam,'),
          // expandedHeight: 50,
        ),
        SliverToBoxAdapter(
            child: ClipRRect(
          child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  child: TextField(
                      cursorHeight: 25,
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.blueAccent,
                        ),
                        // prefixText: ' ',
                      )),
                ),
              )),
        )),
        SliverToBoxAdapter(
          child: ClipRRect(
              child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: Text(
              "Trending",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
        ),
        SliverToBoxAdapter(
          child: CarouselSlider(
            items: [
              Container(
                // margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/harrypotter.jpg')),
                ),
                width: 300,
              ),
              Container(
                //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/radha.jpg')),
                ),
                width: 300,
              ),
              Container(
                //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/1.jpg')),
                ),
                width: 300,
              ),
              Container(
                // margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/11 minutes.jpg')),
                ),
                width: 300,
              ),
              Container(
                //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/radha.jpg')),
                ),
                width: 300,
              ),
            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.2,
              aspectRatio: 16 / 9,
              viewportFraction: 0.6,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ClipRRect(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Text(
                "Continue Reading",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ClipRRect(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(children: [
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/harrypotter.jpg')),
                    ),
                    width: 150,
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/radha.jpg')),
                    ),
                    width: 150.0,
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/1.jpg')),
                    ),
                    width: 150,
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/radha.jpg')),
                    ),
                    width: 150,
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/1.jpg')),
                    ),
                    width: 150,
                  ),
                ]),
                height: 100,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ClipRRect(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Text(
                "You Might Like",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/harry.jpg')),
                          ),
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: MediaQuery.of(context).size.height * 0.18,
                        ),
                        Text('Harry potter')
                      ],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/thekings.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/memory.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/me_before_you.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ClipRRect(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Text(
                "You Might Like",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/harry.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/thekings.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/memory.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/me_before_you.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/harry.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/thekings.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/memory.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/me_before_you.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/harry.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/thekings.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/memory.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/me_before_you.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.18,
                      //color: Colors.blueAccent[400],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
      // // // backgroundColor: Color.fromARGB(255, 1, 0, 3),
    );
  }
}
