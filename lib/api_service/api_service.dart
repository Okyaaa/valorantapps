import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:valoranapps/model/agent_model.dart';
import 'package:valoranapps/model/breach_model.dart';
import 'package:valoranapps/model/kayo_model.dart';
import 'package:valoranapps/model/leaderboard_model.dart';
import 'package:valoranapps/model/raze_model.dart';

class APIservice {
  Future<BreachModel> getDataBreach() async {
    var breach;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/5f8d3a7f-467b-97f3-062c-13acf203c006"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        breach = BreachModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return breach;
  }

  Future<RazeModel> getDataRaze() async {
    var raze;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/f94c3b30-42be-e959-889c-5aa313dba261"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        raze = RazeModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return raze;
  }

  Future<KayoModel> getDataKayo() async {
    var kayo;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/601dbbe7-43ce-be57-2a40-4abd24953621"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        kayo = KayoModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return kayo;
  }
  
  Future<AgentModel> getDataSkye() async {
    var skye;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/6f2a04ca-43e0-be17-7f36-b3908627744d"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        skye = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return skye;
  }

  Future<AgentModel> getDataCypher() async {
    var cypher;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/117ed9e3-49f3-6512-3ccf-0cada7e3823b"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        cypher = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return cypher;
  }

  Future<AgentModel> getDataSova() async {
    var sova;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/320b2a48-4d9b-a075-30f1-1f93a9b638fa"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        sova = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return sova;
  }

  Future<AgentModel> getDataKilljoy() async {
    var killjoy;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/1e58de9c-4950-5125-93e9-a0aee9f98746"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        killjoy = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return killjoy;
  }

  Future<AgentModel> getDataViper() async {
    var viper;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/707eab51-4836-f488-046a-cda6bf494859"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        viper = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return viper;
  }

  Future<AgentModel> getDataPhoenix() async {
    var phoenix;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/eb93336a-449b-9c1b-0a54-a891f7921d69"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        phoenix = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return phoenix;
  }

  Future<AgentModel> getDataAstra() async {
    var astra;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/41fb69c1-4189-7b37-f117-bcaf1e96f1bf"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        astra = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return astra;
  }

  Future<AgentModel> getDataBrimstone() async {
    var brimstone;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/9f0d8ba9-4140-b941-57d3-a7ad57c6b417"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        brimstone = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return brimstone;
  }

  Future<AgentModel> getDataYoru() async {
    var brimstone;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/7f94d92c-4234-0a36-9646-3a87eb8b5c89"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        brimstone = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return brimstone;
  }

  Future<AgentModel> getDataSage() async {
    var sage;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/569fdd95-4d10-43ab-ca70-79becc718b46"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        sage = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return sage;
  }

  Future<AgentModel> getDataReyna() async {
    var Reyna;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/a3bfb853-43b2-7238-a4f1-ad90e9e46bcc"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        Reyna = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return Reyna;
  }

  Future<AgentModel> getDataOmen() async {
    var omen;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/8e253930-4c05-31dd-1b6c-968525494517"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        omen = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return omen;
  }

  Future<AgentModel> getDataJett() async {
    var jett;

    try {
      final response = await http.get(Uri.parse(
          "https://valorant-api.com/v1/agents/add6443a-41bd-e414-f6ad-e58d267f4e95"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        jett = AgentModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    return jett;
  }

  Future<LeaderboardModel> getDataLeaderboard() async {
    var leaderboard;

    try {
      final response = await http.get(Uri.parse(
          "https://ap.api.riotgames.com/val/ranked/v1/leaderboards/by-act/a16955a5-4ad0-f761-5e9e-389df1c892fb?size=50&startIndex=0&api_key=RGAPI-7bd058b9-ff8e-4e57-ba3b-d59a09a1139f"));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        final jsonString = response.body;
        final jsonMap = json.decode(jsonString);
        // print(jsonMap);
        leaderboard = LeaderboardModel.fromJson(jsonMap);
      } else {}
    } catch (e) {
      print(e.toString());
    }

    print(leaderboard);
    return leaderboard;
  }
}
