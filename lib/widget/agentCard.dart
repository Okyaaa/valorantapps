import 'package:flutter/material.dart';

class AgentCard extends StatefulWidget {
  String image;

   AgentCard({
    this.image,
  });

  @override
  _AgentCardState createState() => _AgentCardState();
}

class _AgentCardState extends State<AgentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
       decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.contain,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
              ]
            )
          ]
        )
    );
  }
}