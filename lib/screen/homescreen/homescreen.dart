import 'package:flutter/material.dart';
import 'package:valoranapps/constants/color_constant.dart';
import 'package:valoranapps/widget/agentCard.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Text("hello")
              ],
            ),
          ),
        )
        ),
    );
  }
}