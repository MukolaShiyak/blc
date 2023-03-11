// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MediaModel {
  final int id;
  final String wwise;
  final String wave;

  MediaModel({
    required this.id,
    required this.wwise,
    required this.wave,
  });

  factory MediaModel.fromMap(Map<String, dynamic> map) {
    return MediaModel(
      id: map['id'] as int,
      wwise: map['wwise'] as String,
      wave: map['wave'] as String,
    );
  }
}
