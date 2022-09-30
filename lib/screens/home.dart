import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  late PageController pageController;

  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: (int page) {
          setState(
            () {
              pageIndex = page;
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        iconSize: 30.0,
        currentIndex: pageIndex,
        onTap: (page) {
          pageController.animateToPage(
            page,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(CupertinoIcons.house_fill),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(CupertinoIcons.search),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(CupertinoIcons.person_fill),
          ),
        ],
      ),
    );
  }
}
