import 'package:flutter/material.dart';
import 'package:valoranapps/constants/style_constant.dart';

class TabWidget extends StatefulWidget {
  TabWidget(
      {this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.scrollController,
      this.description1,
      this.description2,
      this.description3,
      this.description4,
      this.name});

  String image1;
  String image2;
  String image3;
  String image4;
  String description1;
  String description2;
  String description3;
  String description4;
  String name;
  final ScrollController scrollController;

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 16, right: 16),
      controller: widget.scrollController,
      children: [
        Column(
          children: [
            Icon(
              Icons.minimize,
              size: 32,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              widget.name,
              style: tipsScreen1,
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    image: DecorationImage(
                      image: NetworkImage(widget.image1),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(
                    widget.description1.toString(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    image: DecorationImage(
                      image: NetworkImage(widget.image2),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(child: Text(widget.description2.toString())),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    image: DecorationImage(
                      image: NetworkImage(widget.image3),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(child: Text(widget.description3.toString())),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    image: DecorationImage(
                      image: NetworkImage(widget.image4),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(child: Text(widget.description4.toString())),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        )
      ],
    );
  }
}
