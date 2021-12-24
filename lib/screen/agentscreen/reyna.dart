import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:valoranapps/api_service/api_service.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/model/agent_model.dart';
import 'package:valoranapps/widget/tabWidget.dart';

class Reyna extends StatefulWidget {
  Reyna({Key key}) : super(key: key);

  @override
  _ReynaState createState() => _ReynaState();
}

class _ReynaState extends State<Reyna> {
  Future<AgentModel> _agent = APIservice().getDataReyna();

  @override
  void initState() {
    _agent = APIservice().getDataReyna();
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
                                  top: 150,
                                  right: 30,
                                  child: Text(
                                    "Reyna",
                                    style: reynaStyle1,
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
        name: "Reyna",
        image1: "https://media.valorant-api.com/agents/a3bfb853-43b2-7238-a4f1-ad90e9e46bcc/abilities/ability1/displayicon.png",
        image2: "https://media.valorant-api.com/agents/a3bfb853-43b2-7238-a4f1-ad90e9e46bcc/abilities/ability2/displayicon.png",
        image3: "https://media.valorant-api.com/agents/a3bfb853-43b2-7238-a4f1-ad90e9e46bcc/abilities/grenade/displayicon.png",
        image4: "https://media.valorant-api.com/agents/a3bfb853-43b2-7238-a4f1-ad90e9e46bcc/abilities/ultimate/displayicon.png",
        description1: "Soul Harvest: Enemies that die to Reyna, or die within 3 seconds of taking damage from Reyna, leave behind Soul Orbs that last 3 seconds.",
        description2: "INSTANTLY consume a nearby Soul Orb, becoming intangible for a short duration. If EMPRESS is active, also become invisible",
        description3: "EQUIP an ethereal, destructible eye. ACTIVATE to cast the eye a short distance forward. The eye will Nearsight all enemies who look at it",
        description4: "INSTANTLY enter a frenzy, increasing firing, equip and reload speed dramatically. Gain infinite charges of Soul Harvest abilities. When an enemy dies to Reyna, or dies within 3 seconds of taking damage from Reyna, the duration is renewed",
      );
}
