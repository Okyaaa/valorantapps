import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:valoranapps/api_service/api_service.dart';
import 'package:valoranapps/model/agent_model.dart';
import 'package:valoranapps/model/kayo_model.dart';
import 'package:valoranapps/widget/tabWidget.dart';

class Skye extends StatefulWidget {
  Skye({Key key}) : super(key: key);

  @override
  _SkyeState createState() => _SkyeState();
}

class _SkyeState extends State<Skye> {
  Future<AgentModel> _agentSkye = APIservice().getDataSkye();

  @override
  void initState() {
    _agentSkye = APIservice().getDataSkye();
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
                    future: _agentSkye,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Center(
                              child: Container(
                                  width: size.width,
                                  height: 500,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(snapshot.data.data.fullPortrait),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
        name: "Skye",
        image1: "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/ability1/displayicon.png",
        image2: "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/ability2/displayicon.png",
        image3: "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/grenade/displayicon.png",
        image4: "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/ultimate/displayicon.png",
        description1: "EQUIP a Tasmanian tiger trinket. FIRE to send out and take control of the predator.  While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies",
        description2: "EQUIP a hawk trinket.  FIRE to send it forward.  HOLD FIRE to guide the hawk in the direction of your crosshair. RE-USE while the hawk is in flight to transform it into a flash",
        description3: "EQUIP a healing trinket.  HOLD FIRE to channel, healing allies in range and line of sight.  Can be reused until her healing pool is depleted.  Skye cannot heal herself",
        description4: "EQUIP a Seeker trinket.  FIRE to send out three Seekers to track down the three closest enemies.  If a Seeker reaches its target, it nearsights them",
      );
}
