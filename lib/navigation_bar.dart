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
        leading: IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AboutPage()));
          },
          iconSize: 45,
        ),
        elevation: 0,
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
        showElevation: false,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavyBarItem(icon: Icon(Icons.person), title: Text('Profile'))
        ],
        backgroundColor: Colors.white,
        curve: Curves.easeInOutCirc,
        animationDuration: Duration(milliseconds: 250),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
