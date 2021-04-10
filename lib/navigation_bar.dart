import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'pages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  PageController _pageController;

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
      appBar: AppBar(
        title: Text(
          'C0vid - Covid19 Tracking',
          style: TextStyle(
            fontSize: 25,
            // color: Colors.black,
          ),
        ),
        centerTitle: true,
        // backgroundColor: Colors.white,
      ),
      body: SizedBox.expand(
        child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: pages),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavyBarItem(icon: Icon(Icons.people), title: Text('Profile'))
        ],
        curve: Curves.easeInOutCirc,
        animationDuration: Duration(milliseconds: 250),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
