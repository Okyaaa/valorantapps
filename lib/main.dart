import 'package:flutter/material.dart';
import 'package:valoranapps/screen/homescreen/homescreen.dart';
import 'package:valoranapps/screen/leaderboard/leaderboard.dart';
import 'package:valoranapps/screen/mainscreen/mainscreen.dart';
import 'package:valoranapps/screen/tipsscreen/tipsscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/mainscreen',
      routes: {
            '/mainscreen': (context) => MainScreen(),
            '/homescreen': (context) => HomeScreen(),
            '/tipsscreen': (context) => TipsScreen(),
            '/leaderboard': (context) => Leaderboard(),
          }
    );

    
  }
}
