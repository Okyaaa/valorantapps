import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:valoranapps/api_service/api_service.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/model/agent_model.dart';
import 'package:valoranapps/widget/tabWidget.dart';

class Phoenix extends StatefulWidget {
  Phoenix({Key key}) : super(key: key);

  @override
  _PhoenixState createState() => _PhoenixState();
}

class _PhoenixState extends State<Phoenix> {
  Future<AgentModel> _agent = APIservice().getDataPhoenix();

  @override
  void initState() {
    _agent = APIservice().getDataPhoenix();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SlidingUpPanel(
          panelBuilder: (scrollController) =>
              buildSlidingPanel(scrollController: scrollController,),
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
                FutureBuilder<AgentModel>(
                    future: _agent,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Center(
                              child: Stack(
                                children: [
                                  Positioned(
                                  top: 180,
                                  right: 20,
                                  child: Text(
                                    "Phoenix",
                                    style: phoenixStyle1,
                                  ),
                                ),
                                  Container(
                                    width: size.width,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(snapshot.data.data.fullPortrait),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                ],
                              ),
                            ),
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
        name: "Phoenix",
        image1: "https://media.valorant-api.com/agents/eb93336a-449b-9c1b-0a54-a891f7921d69/abilities/grenade/displayicon.png",
        image2: "https://media.valorant-api.com/agents/eb93336a-449b-9c1b-0a54-a891f7921d69/abilities/ability1/displayicon.png",
        image3: "https://media.valorant-api.com/agents/eb93336a-449b-9c1b-0a54-a891f7921d69/abilities/ability2/displayicon.png",
        image4: "https://media.valorant-api.com/agents/eb93336a-449b-9c1b-0a54-a891f7921d69/abilities/ultimate/displayicon.png",
        description1: "EQUIP a flame wall. FIRE to create a line of flame that moves forward, creating a wall of fire that blocks vision and damages players passing through it.",
        description2: "EQUIP a flare orb that takes a curving path and detonates shortly after throwing. FIRE to curve the flare orb to the left, detonating and blinding any player who sees the orb.",
        description3: "EQUIP a fireball. FIRE to throw a fireball that explodes after a set amount of time or upon hitting the ground, creating a lingering fire zone that damages enemies.",
        description4: "INSTANTLY place a marker at Phoenix's location. While this ability is active, dying or allowing the timer to expire will end this ability and bring Phoenix back to this location with full health.",
      );
}
