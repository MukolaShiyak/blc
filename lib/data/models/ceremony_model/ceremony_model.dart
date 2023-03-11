import 'package:equatable/equatable.dart';
import 'package:valorant_app/domain/entities/bunddle_entity.dart';
import 'package:valorant_app/domain/entities/ceremony_entity.dart';

class CeremonyModel extends Equatable {
  const CeremonyModel({
    required this.uuid,
    required this.displayName,
    required this.assetPath,
  });

  final String uuid;
  final String displayName;
  final String assetPath;

  factory CeremonyModel.fromJson(Map<String, dynamic> json) => CeremonyModel(
        uuid: json['uuid'],
        displayName: json['displayName'],
        assetPath: json['assetPath'],
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'displayName': displayName,
        'assetPath': assetPath,
      };

  Ceremony toEntity() => Ceremony(
        uuid: uuid,
        displayName: displayName,
        assetPath: assetPath,
      );

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        assetPath,
      ];
}
