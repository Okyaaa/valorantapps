import 'package:flutter/material.dart';
import 'package:valoranapps/constants/color_constant.dart';

class TipsScreen extends StatefulWidget {
  TipsScreen({Key? key}) : super(key: key);

  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackground,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("TipsScreen")
            ],
          ),
        )
        ),
    );
  }
}