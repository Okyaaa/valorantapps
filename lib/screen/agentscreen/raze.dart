import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:valoranapps/api_service/api_service.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/model/raze_model.dart';
import 'package:valoranapps/widget/tabWidget.dart';

class Raze extends StatefulWidget {
  Raze({Key key}) : super(key: key);

  @override
  _RazeState createState() => _RazeState();
}

class _RazeState extends State<Raze> {
  Future<RazeModel> _agentRaze = APIservice().getDataRaze();

  @override
  void initState() {
    _agentRaze = APIservice().getDataRaze();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SlidingUpPanel(
          panelBuilder: (scrollController) => buildSlidingPanel(
            scrollController: scrollController,
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
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
                SizedBox(
                  height: 32,
                ),
                FutureBuilder<RazeModel>(
                    future: _agentRaze,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Center(
                                child: Stack(
                              children: [
                                Positioned(
                                  top: 120,
                                  right: 30,
                                  child: Text(
                                    "Raze",
                                    style: razeStyle1,
                                  ),
                                ),
                                Container(
                                    width: size.width,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            snapshot.data.data.fullPortrait),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ],
                            )),
                          ],
                        );
                      } else {
                        return SizedBox();
                      }
                    })
              ],
            ),
          )),
        ));
  }

  Widget buildSlidingPanel({
    @required ScrollController scrollController,
  }) =>
      TabWidget(
        scrollController: scrollController,
        name: "Raze",
        image1:
            "https://media.valorant-api.com/agents/f94c3b30-42be-e959-889c-5aa313dba261/abilities/ability1/displayicon.png",
        image2:
            "https://media.valorant-api.com/agents/f94c3b30-42be-e959-889c-5aa313dba261/abilities/ability2/displayicon.png",
        image3:
            "https://media.valorant-api.com/agents/f94c3b30-42be-e959-889c-5aa313dba261/abilities/grenade/displayicon.png",
        image4:
            "https://media.valorant-api.com/agents/f94c3b30-42be-e959-889c-5aa313dba261/abilities/ultimate/displayicon.png",
        description1:
            "INSTANTLY throw a Blast Pack that will stick to surfaces. RE-USE the ability after deployment to detonate, damaging and moving anything hit",
        description2:
            "EQUIP a cluster grenade. FIRE to throw the grenade, which does damage and creates sub-munitions, each doing damage to anyone in their range",
        description3:
            "EQUIP a Boom Bot. FIRE will deploy the bot, causing it to travel in a straight line on the ground, bouncing off walls. The Boom Bot will lock on to any enemies in its frontal cone and chase them, exploding for heavy damage if it reaches them",
        description4:
            "EQUIP a rocket launcher. FIRE shoots a rocket that does massive area damage on contact with anything",
      );
}
