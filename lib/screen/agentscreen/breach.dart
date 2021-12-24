import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:valoranapps/api_service/api_service.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/model/breach_model.dart';
import 'package:valoranapps/widget/tabWidget.dart';

class Breach extends StatefulWidget {
  Breach({Key key}) : super(key: key);

  @override
  _BreachState createState() => _BreachState();
}

class _BreachState extends State<Breach> {
  Future<BreachModel> _agentBreach = APIservice().getDataBreach();

  @override
  void initState() {
    _agentBreach = APIservice().getDataBreach();
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
                FutureBuilder<BreachModel>(
                    future: _agentBreach,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Center(
                              child: Stack(
                                children: [
                                  Positioned(
                                  top: 160,
                                  right: 20,
                                  child: Text(
                                    "Breach",
                                    style: breachStyle1,
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
        name: "Papa Breach",
        image1: "https://media.valorant-api.com/agents/5f8d3a7f-467b-97f3-062c-13acf203c006/abilities/ability1/displayicon.png",
        image2: "https://media.valorant-api.com/agents/5f8d3a7f-467b-97f3-062c-13acf203c006/abilities/ability2/displayicon.png",
        image3: "https://media.valorant-api.com/agents/5f8d3a7f-467b-97f3-062c-13acf203c006/abilities/grenade/displayicon.png",
        image4: "https://media.valorant-api.com/agents/5f8d3a7f-467b-97f3-062c-13acf203c006/abilities/ultimate/displayicon.png",
        description1: "EQUIP a blinding charge. FIRE the charge to set a fast-acting burst through the wall. The charge detonates to blind all players looking at it",
        description2: "EQUIP a seismic blast. HOLD FIRE to increase the distance. RELEASE to set off the quake, dazing all players in its zone and in a line up to the zone",
        description3: "EQUIP a fusion charge. FIRE the charge to set a slow-acting burst through the wall. The burst does heavy damage to anyone caught in its area",
        description4: "EQUIP a Seismic Charge. FIRE to send a cascading quake through all terrain in a large cone. The quake dazes and knocks up anyone caught in it",
      );
}
