import 'package:flutter/material.dart';
import 'package:valoranapps/constants/color_constant.dart';
import 'package:valoranapps/constants/style_constant.dart';

class AgentCard extends StatefulWidget {
  String? ranking;
  String? gameName;
  String? rating;

  AgentCard({
    required this.ranking,
    required this.gameName,
    required this.rating
  });

  @override
  _AgentCardState createState() => _AgentCardState();
}

class _AgentCardState extends State<AgentCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
       decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.ranking!,
                style: leaderboad1,),
                Text(widget.gameName!,
                style: leaderboad1,),
                Text(widget.rating!,
                style: leaderboad1,),
              ]
            )
          ]
        )
    );
  }
}