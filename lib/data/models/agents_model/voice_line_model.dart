// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:valorant_app/data/models/agents_model/media_model.dart';

class VoiceLineModel {
  final double minDuration;
  final double maxDuration;
  final List<MediaModel> mediaList;

  VoiceLineModel({
    required this.minDuration,
    required this.maxDuration,
    required this.mediaList,
  });

  factory VoiceLineModel.fromJson(Map<String, dynamic> map) {
    return VoiceLineModel(
      minDuration: map['minDuration'] as double,
      maxDuration: map['maxDuration'] as double,
      mediaList: List<MediaModel>.from(
        (map['mediaList'] as List).map<MediaModel>(
          (x) => MediaModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
