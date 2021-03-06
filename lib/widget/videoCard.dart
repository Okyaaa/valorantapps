import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/youtube/youtube.dart';

// ignore: must_be_immutable
class VideoCard extends StatefulWidget {
  String title;
  String youtubeUrl;

  VideoCard({this.title, this.youtubeUrl});

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        left: 8,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            width: size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.15),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                widget.title,
                                style: leaderboad1,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        Youtube(url: widget.youtubeUrl)));
                          },
                          icon: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.grey[800],
                            size: 32,
                          ),
                          label: Text("")),
                    ]),
              )
            ])),
      ),
    );
  }
}
