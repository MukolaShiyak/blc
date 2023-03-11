// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BudieLvlModel {
  final String uuid;
  final int charmLevel;
  final String displayName;
  final String displayIcon;
  final String assetPath;

  BudieLvlModel({
    required this.uuid,
    required this.charmLevel,
    required this.displayName,
    required this.displayIcon,
    required this.assetPath,
  });

  factory BudieLvlModel.fromJson(Map<String, dynamic> map) {
    return BudieLvlModel(
      uuid: map['uuid'] as String,
      charmLevel: map['charmLevel'] as int,
      displayName: map['displayName'] as String,
      displayIcon: map['displayIcon'] as String,
      assetPath: map['assetPath'] as String,
    );
  }
}
