import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/widget/tutorialCard.dart';
import 'package:valoranapps/widget/videoCard.dart';
import 'package:valoranapps/youtube/youtube.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExpertScreen extends StatefulWidget {
  @override
  _ExpertScreenState createState() => _ExpertScreenState();
}

class _ExpertScreenState extends State<ExpertScreen> {
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
                                AssetImage('assets/tutorialscreen/valorant2.jpg'),
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
                        "Expert",
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
                        color: Colors.grey[800],
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
                      title: "1. Movement",
                      youtubeUrl: "https://www.youtube.com/watch?v=nIRXGgF2Ajg",
                    ),
                    Divider(
                      height: 2,
                    ),
                    VideoCard(
                      title: "2. Teamwork",
                      youtubeUrl: "https://www.youtube.com/watch?v=DHC4YSeq6co",
                    ),
                    Divider(
                      height: 2,
                    ),
                    VideoCard(
                      title: "3. What  is inside radiant mind",
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
