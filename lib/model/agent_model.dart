// To parse this JSON data, do
//
//     final kayoModel = kayoModelFromJson(jsonString);

import 'dart:convert';

AgentModel SyModelFromJson(String str) => AgentModel.fromJson(json.decode(str));

String kayoModelToJson(AgentModel data) => json.encode(data.toJson());

class AgentModel {
    AgentModel({
        this.status,
        this.data,
    });

    int status;
    Data data;

    factory AgentModel.fromJson(Map<String, dynamic> json) => AgentModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.uuid,
        this.displayName,
        this.description,
        this.developerName,
        this.characterTags,
        this.displayIcon,
        this.displayIconSmall,
        this.bustPortrait,
        this.fullPortrait,
        this.killfeedPortrait,
        this.assetPath,
        this.isFullPortraitRightFacing,
        this.isPlayableCharacter,
        this.isAvailableForTest,
        this.isBaseContent,
        this.role,
        this.abilities,
        this.voiceLine,
    });

    String uuid;
    String displayName;
    String description;
    String developerName;
    dynamic characterTags;
    String displayIcon;
    String displayIconSmall;
    String bustPortrait;
    String fullPortrait;
    String killfeedPortrait;
    String assetPath;
    bool isFullPortraitRightFacing;
    bool isPlayableCharacter;
    bool isAvailableForTest;
    bool isBaseContent;
    Role role;
    List<Ability> abilities;
    VoiceLine voiceLine;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        characterTags: json["characterTags"],
        displayIcon: json["displayIcon"],
        displayIconSmall: json["displayIconSmall"],
        bustPortrait: json["bustPortrait"],
        fullPortrait: json["fullPortrait"],
        killfeedPortrait: json["killfeedPortrait"],
        assetPath: json["assetPath"],
        isFullPortraitRightFacing: json["isFullPortraitRightFacing"],
        isPlayableCharacter: json["isPlayableCharacter"],
        isAvailableForTest: json["isAvailableForTest"],
        isBaseContent: json["isBaseContent"],
        role: Role.fromJson(json["role"]),
        abilities: List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
        voiceLine: VoiceLine.fromJson(json["voiceLine"]),
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "developerName": developerName,
        "characterTags": characterTags,
        "displayIcon": displayIcon,
        "displayIconSmall": displayIconSmall,
        "bustPortrait": bustPortrait,
        "fullPortrait": fullPortrait,
        "killfeedPortrait": killfeedPortrait,
        "assetPath": assetPath,
        "isFullPortraitRightFacing": isFullPortraitRightFacing,
        "isPlayableCharacter": isPlayableCharacter,
        "isAvailableForTest": isAvailableForTest,
        "isBaseContent": isBaseContent,
        "role": role.toJson(),
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "voiceLine": voiceLine.toJson(),
    };
}

class Ability {
    Ability({
        this.slot,
        this.displayName,
        this.description,
        this.displayIcon,
    });

    String slot;
    String displayName;
    String description;
    String displayIcon;

    factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
    );

    Map<String, dynamic> toJson() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
    };
}

class Role {
    Role({
        this.uuid,
        this.displayName,
        this.description,
        this.displayIcon,
        this.assetPath,
    });

    String uuid;
    String displayName;
    String description;
    String displayIcon;
    String assetPath;

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
        assetPath: json["assetPath"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
        "assetPath": assetPath,
    };
}

class VoiceLine {
    VoiceLine({
        this.minDuration,
        this.maxDuration,
        this.mediaList,
    });

    double minDuration;
    double maxDuration;
    List<MediaList> mediaList;

    factory VoiceLine.fromJson(Map<String, dynamic> json) => VoiceLine(
        minDuration: json["minDuration"].toDouble(),
        maxDuration: json["maxDuration"].toDouble(),
        mediaList: List<MediaList>.from(json["mediaList"].map((x) => MediaList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "minDuration": minDuration,
        "maxDuration": maxDuration,
        "mediaList": List<dynamic>.from(mediaList.map((x) => x.toJson())),
    };
}

class MediaList {
    MediaList({
        this.id,
        this.wwise,
        this.wave,
    });

    int id;
    String wwise;
    String wave;

    factory MediaList.fromJson(Map<String, dynamic> json) => MediaList(
        id: json["id"],
        wwise: json["wwise"],
        wave: json["wave"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "wwise": wwise,
        "wave": wave,
    };
}
