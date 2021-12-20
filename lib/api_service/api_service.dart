import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:valoranapps/model/leaderboard_model.dart';

class APIservice {
  Future<LeaderboardModel> getLeaderboard() async {
    var leaderboard;

    try {
      final response =
          await http.get(Uri.parse("https://ap.api.riotgames.com/val/ranked/v1/leaderboards/by-act/a16955a5-4ad0-f761-5e9e-389df1c892fb?size=50&startIndex=0&api_key=RGAPI-09544a62-6ff2-4b0e-9164-ec16ce1a3436")
      );
      print(response.statusCode.toString());

      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        leaderboard = LeaderboardModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return leaderboard;
  }
}