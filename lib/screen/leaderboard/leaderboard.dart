import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valoranapps/api_service/api_service.dart';
import 'package:valoranapps/constants/color_constant.dart';
import 'package:valoranapps/constants/style_constant.dart';
import 'package:valoranapps/model/leaderboard_model.dart';
import 'package:valoranapps/size_config.dart';
import 'package:valoranapps/widget/agentCard.dart';
import 'package:valoranapps/widget/leaderCard.dart';

class Leaderboard extends StatefulWidget {
  Leaderboard({Key? key}) : super(key: key);

  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  Future<LeaderboardModel> _leaderboard = APIservice().getLeaderboard();

  @override
  void initState() {
    // TODO: implement initState
    _leaderboard = APIservice().getLeaderboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Text("Leaderboard",
                    style: leaderboard2,
                  ),
                ),
                Center(
                  child: Lottie.asset(
                    'assets/star.json',
                    repeat: true,
                    width: 200,
                    height: 200
                  ),
                ),
                SizedBox(height: 16,),
                FutureBuilder<LeaderboardModel>(
                    future: _leaderboard,
                    builder: (context, snapshot) {
                      return ListView.separated(
                          controller: ScrollController(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            if (snapshot.hasData) {
                              var _ranking = snapshot.data!.players[index];
                              return LeaderCard(
                                ranking: index.toString(), 
                                gameName: _ranking.gameName, 
                                rating: _ranking.rankedRating.toString()
                                );
                            }
                            else {
                              return CircularProgressIndicator();
                            }
                          },
                          separatorBuilder: (BuildContext context, index) =>
                              Divider(
                                height: 2,
                              ),
                          itemCount: snapshot.data!.players.length);
                    }),
              ],
            ),
          ),
        ),
      )),
    );
  }
}