import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/buddies_model/buddie_levels_model.dart';
import 'package:valorant_app/domain/entities/buddie_entity.dart';

class BuddiesModel extends Equatable {
  const BuddiesModel({
    required this.uuid,
    required this.displayName,
    required this.isHiddenIfNotOwned,
    required this.themeUuid,
    required this.assetPath,
    required this.displayIcon,
    required this.levels,
  });

  final String uuid;
  final String displayName;
  final bool isHiddenIfNotOwned;
  final String? themeUuid;
  final String displayIcon;
  final String assetPath;
  final List<BudieLvlModel> levels;

  factory BuddiesModel.fromJson(Map<String, dynamic> json) => BuddiesModel(
        uuid: json['uuid'],
        displayName: json['displayName'],
        displayIcon: json['displayIcon'],
        assetPath: json['assetPath'],
        isHiddenIfNotOwned: json['isHiddenIfNotOwned'],
        themeUuid: json['themeUuid'],
        levels: (json['levels'] as List)
            .map((e) => BudieLvlModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'displayName': displayName,
        'displayIcon': displayIcon,
        'assetPath': assetPath,
        'isHiddenIfNotOwned': isHiddenIfNotOwned,
        'themeUuid': themeUuid,
        'levels': levels,
      };

  Buddie toEntity() => Buddie(
        uuid: uuid,
        displayName: displayName,
        displayIcon: displayIcon,
        assetPath: assetPath,
        isHiddenIfNotOwned: isHiddenIfNotOwned,
        themeUuid: themeUuid,
        levels: levels,
      );

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        displayIcon,
        assetPath,
        isHiddenIfNotOwned,
        themeUuid,
        levels,
      ];
}
