import 'package:equatable/equatable.dart';

class ContentTiers extends Equatable {
  const ContentTiers({
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
