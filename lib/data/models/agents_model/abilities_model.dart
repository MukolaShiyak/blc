// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AbilitiesModel {
  final String slot;
  final String displayName;
  final String description;
  final String? displayIcon;

  AbilitiesModel({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory AbilitiesModel.fromJson(Map<String, dynamic> map) {
    return AbilitiesModel(
      slot: map['slot'] as String,
      displayName: map['displayName'] as String,
      description: map['description'] as String,
      displayIcon:
          map['displayIcon'] != null ? map['displayIcon'] as String : null,
    );
  }
}
