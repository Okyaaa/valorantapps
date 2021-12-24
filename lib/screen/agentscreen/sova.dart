import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:valoranapps/api_service/api_service.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/model/agent_model.dart';
import 'package:valoranapps/widget/tabWidget.dart';

class Sova extends StatefulWidget {
  Sova({Key key}) : super(key: key);

  @override
  _SovaState createState() => _SovaState();
}

class _SovaState extends State<Sova> {
  Future<AgentModel> _agent = APIservice().getDataCypher();

  @override
  void initState() {
    _agent = APIservice().getDataCypher();
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
                                  top: 160,
                                  right: 30,
                                  child: Text(
                                    "Sova",
                                    style: sovaStyle1,
                                  ),
                                ),
                                Container(
                                    width: size.width,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltf11234f4775729b7/5ebf2c275e73766852c8d5d4/V_AGENTS_587x900_ALL_Sova_2.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                              ],
                            )
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
        name: "Sova",
        image1: "https://media.valorant-api.com/agents/ded3520f-4264-bfed-162d-b080e2abccf9/abilities/ability1/displayicon.png",
        description1: "EQUIP a bow with a shock bolt. FIRE to send the explosive bolt forward, detonating upon collision and damaging players nearby. HOLD FIRE to extend the range of the projectile. ALTERNATE FIRE to add up to two bounces to this arrow",
        image2: "https://media.valorant-api.com/agents/ded3520f-4264-bfed-162d-b080e2abccf9/abilities/ability2/displayicon.png",
        description2: "EQUIP a bow with recon bolt. FIRE to send the recon bolt forward, activating upon collision and revealing the location of nearby enemies caught in the line of sight of the bolt.",
        image3: "https://media.valorant-api.com/agents/ded3520f-4264-bfed-162d-b080e2abccf9/abilities/grenade/displayicon.png",
        description3: "EQUIP an owl drone. FIRE to deploy and take control of movement of the drone. While in control of the drone, FIRE to shoot a marking dart. This dart will reveal the location of any player struck by the dart",
        image4: "https://media.valorant-api.com/agents/ded3520f-4264-bfed-162d-b080e2abccf9/abilities/ultimate/displayicon.png",
        description4: "EQUIP a bow with three long-range, wall-piercing energy blasts. FIRE to release an energy blast in a line in front of Sova, dealing damage and revealing the location of enemies caught in the line",
      );
}
