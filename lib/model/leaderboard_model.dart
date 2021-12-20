// To parse this JSON data, do
//
//     final leaderboardModel = leaderboardModelFromJson(jsonString);

import 'dart:convert';

LeaderboardModel leaderboardModelFromJson(String str) => LeaderboardModel.fromJson(json.decode(str));

String leaderboardModelToJson(LeaderboardModel data) => json.encode(data.toJson());

class LeaderboardModel {
    LeaderboardModel({
        required this.actId,
        required this.players,
        required this.totalPlayers,
        required this.immortalStartingPage,
        required this.immortalStartingIndex,
        required this.topTierRrThreshold,
        required this.tierDetails,
        required this.startIndex,
        required this.query,
        required this.shard,
    });

    String actId;
    List<Player> players;
    int totalPlayers;
    int immortalStartingPage;
    int immortalStartingIndex;
    int topTierRrThreshold;
    Map<String, TierDetail> tierDetails;
    int startIndex;
    String query;
    String shard;

    factory LeaderboardModel.fromJson(Map<String, dynamic> json) => LeaderboardModel(
        actId: json["actId"],
        players: List<Player>.from(json["players"].map((x) => Player.fromJson(x))),
        totalPlayers: json["totalPlayers"],
        immortalStartingPage: json["immortalStartingPage"],
        immortalStartingIndex: json["immortalStartingIndex"],
        topTierRrThreshold: json["topTierRRThreshold"],
        tierDetails: Map.from(json["tierDetails"]).map((k, v) => MapEntry<String, TierDetail>(k, TierDetail.fromJson(v))),
        startIndex: json["startIndex"],
        query: json["query"],
        shard: json["shard"],
    );

    Map<String, dynamic> toJson() => {
        "actId": actId,
        "players": List<dynamic>.from(players.map((x) => x.toJson())),
        "totalPlayers": totalPlayers,
        "immortalStartingPage": immortalStartingPage,
        "immortalStartingIndex": immortalStartingIndex,
        "topTierRRThreshold": topTierRrThreshold,
        "tierDetails": Map.from(tierDetails).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "startIndex": startIndex,
        "query": query,
        "shard": shard,
    };
}

class Player {
    Player({
        required this.puuid,
        required this.gameName,
        required this.tagLine,
        required this.leaderboardRank,
        required this.rankedRating,
        required this.numberOfWins,
        required this.competitiveTier,
    });

    String puuid;
    String gameName;
    String tagLine;
    int leaderboardRank;
    int rankedRating;
    int numberOfWins;
    int competitiveTier;

    factory Player.fromJson(Map<String, dynamic> json) => Player(
        puuid: json["puuid"],
        gameName: json["gameName"],
        tagLine: json["tagLine"],
        leaderboardRank: json["leaderboardRank"],
        rankedRating: json["rankedRating"],
        numberOfWins: json["numberOfWins"],
        competitiveTier: json["competitiveTier"],
    );

    Map<String, dynamic> toJson() => {
        "puuid": puuid,
        "gameName": gameName,
        "tagLine": tagLine,
        "leaderboardRank": leaderboardRank,
        "rankedRating": rankedRating,
        "numberOfWins": numberOfWins,
        "competitiveTier": competitiveTier,
    };
}

class TierDetail {
    TierDetail({
        required this.rankedRatingThreshold,
        required this.startingPage,
        required this.startingIndex,
    });

    int rankedRatingThreshold;
    int startingPage;
    int startingIndex;

    factory TierDetail.fromJson(Map<String, dynamic> json) => TierDetail(
        rankedRatingThreshold: json["rankedRatingThreshold"],
        startingPage: json["startingPage"],
        startingIndex: json["startingIndex"],
    );

    Map<String, dynamic> toJson() => {
        "rankedRatingThreshold": rankedRatingThreshold,
        "startingPage": startingPage,
        "startingIndex": startingIndex,
    };
}
