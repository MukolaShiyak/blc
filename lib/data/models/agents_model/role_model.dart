// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:valorant_app/data/models/agents_model/abilities_model.dart';

class AgentRoleModel {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final String assetPath;

  AgentRoleModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.assetPath,
  });

  factory AgentRoleModel.fromJson(Map<String, dynamic> map) {
    return AgentRoleModel(
      uuid: map['uuid'] as String,
      displayName: map['displayName'] as String,
      description: map['description'] as String,
      displayIcon: map['displayIcon'] as String,
      assetPath: map['assetPath'] as String,
    );
  }
}
