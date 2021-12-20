import 'package:flutter/material.dart';
import 'package:valoranapps/constants/color_constant.dart';
import 'package:valoranapps/constants/style_constant.dart';

class LeaderCard extends StatefulWidget {
  String? ranking;
  String? gameName;
  String? rating;

  LeaderCard(
      {required this.ranking, required this.gameName, required this.rating});

  @override
  _LeaderCardState createState() => _LeaderCardState();
}

class _LeaderCardState extends State<LeaderCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
          width: size.width,
          padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.5),
            //     spreadRadius: 1,
            //     blurRadius: 5,
            //     offset: Offset(0, 4),
            //   ),
            // ],
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/leaderboardscreen/jett.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.gameName!,
                            style: leaderboad1,
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            widget.rating!,
                            style: leaderboard3,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "# " + widget.ranking!,
                    style: leaderboad1,
                  ),
                ])
          ])),
    );
  }
}