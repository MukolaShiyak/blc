import 'package:equatable/equatable.dart';
import 'package:valorant_app/domain/entities/competetiv_tier_entity.dart';
import 'package:valorant_app/domain/entities/content_tiers.dart';

class ContentTiersModel extends Equatable {
  const ContentTiersModel({
    required this.uuid,
    required this.displayName,
    required this.devName,
    required this.rank,
    required this.juiceValue,
    required this.juiceCost,
    required this.highlightColor,
    required this.displayIcon,
    required this.assetPath,
  });

  final String uuid;
  final String displayName;
  final String devName;
  final int rank;
  final int juiceValue;
  final int juiceCost;
  final String highlightColor;
  final String displayIcon;
  final String assetPath;

  factory ContentTiersModel.fromJson(Map<String, dynamic> json) =>
      ContentTiersModel(
        uuid: json['uuid'],
        displayName: json['displayName'],
        devName: json['devName'],
        rank: json['rank'],
        juiceValue: json['juiceValue'],
        juiceCost: json['juiceCost'],
        highlightColor: json['highlightColor'],
        displayIcon: json['displayIcon'],
        assetPath: json['assetPath'],
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'displayName': displayName,
        'devName': devName,
        'rank': rank,
        'juiceValue': juiceValue,
        'juiceCost': juiceCost,
        'highlightColor': highlightColor,
        'displayIcon': displayIcon,
        'assetPath': assetPath,
      };

  ContentTiers toEntity() => ContentTiers(
        uuid: uuid,
        displayName: displayName,
        devName: devName,
        rank: rank,
        juiceValue: juiceValue,
        juiceCost: juiceCost,
        highlightColor: highlightColor,
        displayIcon: displayIcon,
        assetPath: assetPath,
      );

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        devName,
        rank,
        juiceValue,
        juiceCost,
        highlightColor,
        displayIcon,
        assetPath,
      ];
}
