import 'package:flutter/material.dart';
import 'package:valoranapps/screen/homescreen/homescreen.dart';
import 'package:valoranapps/screen/leaderboard/leaderboard.dart';
import 'package:valoranapps/screen/tipsscreen/tipsscreen.dart';
import 'package:flutter/cupertino.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
  
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: "tips"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: "Leaderboard"
            ),
        ]
        ), 
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: TipsScreen());
            },);
            case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: HomeScreen());
            },);
            case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: Leaderboard());
            },);
            default: return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: HomeScreen());
            },);
        }
      }
      );
  }
}