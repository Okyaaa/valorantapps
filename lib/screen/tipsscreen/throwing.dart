import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/widget/tutorialCard.dart';
import 'package:valoranapps/widget/videoCard.dart';
import 'package:valoranapps/youtube/youtube.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ThrowingScreen extends StatefulWidget {
  @override
  _ThrowingScreenState createState() => _ThrowingScreenState();
}

class _ThrowingScreenState extends State<ThrowingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 350,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/tutorialscreen/valorantGuide5.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.grey.withOpacity(0.0),
                                  Colors.black,
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ])),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 2,
                    left: 16,
                    child: Container(
                      width: 200,
                      height: 50,
                      child: Text(
                        "Throwing",
                        style: tipsScreen2,
                      ),
                    ),
                  ),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 32,
                      ),
                      label: Text("")),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    VideoCard(
                      title: "1. How to make immortal rage",
                      youtubeUrl: "https://www.youtube.com/watch?v=nIRXGgF2Ajg",
                    ),
                    Divider(
                      height: 2,
                    ),
                    VideoCard(
                      title: "2. Shotguns make people very mad",
                      youtubeUrl: "https://www.youtube.com/watch?v=DHC4YSeq6co",
                    ),
                    Divider(
                      height: 2,
                    ),
                    VideoCard(
                      title: "3. How to troll",
                      youtubeUrl: "https://www.youtube.com/watch?v=LF9pPIi5ops",
                    ),
                    Divider(
                      height: 2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
