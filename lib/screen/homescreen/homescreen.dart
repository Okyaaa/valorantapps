import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/screen/agentscreen/astra.dart';
import 'package:valoranapps/screen/agentscreen/breach.dart';
import 'package:valoranapps/screen/agentscreen/brimstone.dart';
import 'package:valoranapps/screen/agentscreen/cypher.dart';
import 'package:valoranapps/screen/agentscreen/jett.dart';
import 'package:valoranapps/screen/agentscreen/kayo.dart';
import 'package:valoranapps/screen/agentscreen/killjoy.dart';
import 'package:valoranapps/screen/agentscreen/omen.dart';
import 'package:valoranapps/screen/agentscreen/phoenix.dart';
import 'package:valoranapps/screen/agentscreen/raze.dart';
import 'package:valoranapps/screen/agentscreen/reyna.dart';
import 'package:valoranapps/screen/agentscreen/sage.dart';
import 'package:valoranapps/screen/agentscreen/skye.dart';
import 'package:valoranapps/screen/agentscreen/sova.dart';
import 'package:valoranapps/screen/agentscreen/viper.dart';
import 'package:valoranapps/screen/agentscreen/yoru.dart';
import 'package:valoranapps/widget/agentCard.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Learn About Agent",
                style: homeScreen1,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Duelist",
                style: homeScreen2,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) =>Jett()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/jett.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Phoenix()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/phoenix.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                     Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Raze()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/raze.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                       Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Reyna()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/reyna.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Yoru()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/yoru.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Smoker",
                style: homeScreen2,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Astra()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/astra.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Brimstone()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/brimstone.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Omen()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/omen.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Viper()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/viper.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Controller",
                style: homeScreen2,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Breach()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/breach.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Kayo()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/kayo.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Skye()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/skye.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Sova()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/sova.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Sentinel",
                style: homeScreen2,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Sage()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/sage.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Cypher()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/cypher.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Killjoy()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/killjoy.jpg",
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => Omen()));
                    },
                    child: AgentCard(
                      image: "assets/homescreen/omen.jpg",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
