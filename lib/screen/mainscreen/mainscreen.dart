import 'package:flutter/material.dart';
import 'package:valoranapps/constants/color_constant.dart';
import 'package:valoranapps/screen/homescreen/homescreen.dart';
import 'package:valoranapps/screen/leaderboard/leaderboard.dart';
import 'package:valoranapps/screen/tipsscreen/tipsscreen.dart';
import 'package:bottom_nav_bar/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _body() => SizedBox.expand(
        child: IndexedStack(
          index: currentIndex,
          children: <Widget>[
            TipsScreen(),
            HomeScreen(),
            Leaderboard(),
          ],
        ),
      );

  Widget _bottomNavBar() => BottomNavBar(
        showElevation: true,
        selectedIndex: currentIndex,
        animationDuration: const Duration(milliseconds: 0),
        backgroundColor: mainBackground,
        
        onItemSelected: (index) {
          setState(() => currentIndex = index);
        },
        items: <BottomNavBarItem>[
          BottomNavBarItem(
            title: 'Tips',
            activeBackgroundColor: Colors.transparent,
            icon: Icon(Icons.menu_book_rounded),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
          ),
          BottomNavBarItem(
            title: 'Home',
            activeBackgroundColor: Colors.transparent,
            icon: Icon(Icons.home),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
          ),
          BottomNavBarItem(
            title: 'Leaderboard',
            activeBackgroundColor: Colors.transparent,
            icon: Icon(Icons.leaderboard),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
          ),
        ],
      );
}