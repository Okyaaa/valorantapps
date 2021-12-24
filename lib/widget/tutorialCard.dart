import 'package:flutter/material.dart';

import 'package:valoranapps/constants/style_constant.dart';

// ignore: must_be_immutable
class TurorialCard extends StatefulWidget {
  Color color;
  String title;
  String image;

  TurorialCard({
    Key key,
    this.color,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  _TurorialCardState createState() => _TurorialCardState();
}

class _TurorialCardState extends State<TurorialCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Stack(
              children: [
                Container(
                  width: size.width / 2.25,
                  height: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: size.width / 2.25,
                  height: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                Positioned(
                  bottom: 20,
                  left: 16,
                  child: Text(
                    widget.title,
                    style: tipsScreen2,
                  ),
                )
              ],
            )
          ])
        ]);
  }
}
