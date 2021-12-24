import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class Youtube extends StatefulWidget {
  String url;

  Youtube({this.url});

  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayer.convertUrlToId(widget.url), // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ));

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                SizedBox(height: 150,),
            YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: _controller,
                ),
                builder: (context, player) {
                  return Column(
                    children: [
                      player,
                    ],
                  );
                }),
        ],
      ),
          )),
    );
  }
}
