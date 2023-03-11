import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/buddies_model/buddie_levels_model.dart';

class Buddie extends Equatable {
  const Buddie({
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
