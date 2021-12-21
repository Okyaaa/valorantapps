import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:valoranapps/model/leaderboard_model.dart';

class APIservice {
  Future<LeaderboardModel> getDataLeaderboard() async {
    var leaderboard1;

    try {
      final response = await http.get(Uri.parse(
          "https://ap.api.riotgames.com/val/ranked/v1/leaderboards/by-act/a16955a5-4ad0-f761-5e9e-389df1c892fb?size=50&startIndex=0&api_key=RGAPI-beddcca7-9fb4-4b09-9c34-297817068aea"));
      print(response.statusCode.toString());

      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        print(jsonMap);
        leaderboard1 = LeaderboardModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    print(leaderboard1);
    return leaderboard1;
  }
}
