import 'package:flutter/material.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/widget/videoCard.dart';

class BeginnerScreen extends StatefulWidget {
  @override
  _BeginnerScreenState createState() => _BeginnerScreenState();
}

class _BeginnerScreenState extends State<BeginnerScreen> {
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
                                AssetImage('assets/leaderboardscreen/jett.jpg'),
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
                        "Beginner",
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
                        color: Colors.grey[900],
                        size: 32,
                      ),
                      label: Text("")),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VideoCard(
                      title: "1. Learn every valorant maps",
                      youtubeUrl: "https://www.youtube.com/watch?v=nIRXGgF2Ajg",
                    ),
                    Divider(
                      height: 2,
                    ),
                    VideoCard(
                      title: "2. Learn every valorant agents",
                      youtubeUrl: "https://www.youtube.com/watch?v=DHC4YSeq6co",
                    ),
                    Divider(
                      height: 2,
                    ),
                    VideoCard(
                      title: "3. Learn every valorant weapons",
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
