import 'package:flutter/material.dart';
import 'package:valoranapps/constants/color_constant.dart';
import 'package:valoranapps/constants/style_constant.dart';

class TipsScreen extends StatefulWidget {
  TipsScreen({Key? key}) : super(key: key);

  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width / 1.5,
              child: Text(
                "Choose the right guide for you !",
                style: tipsScreen1,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
