import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/screen/agentscreen/jett.dart';
import 'package:valoranapps/screen/tipsscreen/amateur.dart';
import 'package:valoranapps/screen/tipsscreen/beginner.dart';
import 'package:valoranapps/screen/tipsscreen/expert.dart';
import 'package:valoranapps/screen/tipsscreen/throwing.dart';
import 'package:valoranapps/widget/tutorialCard.dart';

class TipsScreen extends StatefulWidget {
  TipsScreen({Key key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width / 1.5,
              child: Text(
                "Choose the right guide for you !",
                style: tipsScreen1,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                new GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => BeginnerScreen()));
                  },
                  child: TurorialCard(
                    image: 'assets/leaderboardscreen/jett.jpg',
                    title: "Beginner",
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => AmateurScreen()));
                  },
                  child: TurorialCard(
                    image: 'assets/tutorialscreen/valorant1.jpg',
                    title: "Amateur",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => ExpertScreen()));
                  },
                  child: TurorialCard(
                    image: 'assets/tutorialscreen/valorant2.jpg',
                    title: "Expert",
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => ThrowingScreen()));
                  },
                  child: TurorialCard(
                    image: 'assets/tutorialscreen/valorantGuide5.jpg',
                    title: "Throwing",
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
