import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/map_model/callOut_model/callOut_model.dart';

class MapEntity extends Equatable {
  const MapEntity({
    required this.uuid,
    required this.displayName,
    required this.coordinates,
    required this.displayIcon,
    required this.listViewIcon,
    required this.splash,
    required this.assetPath,
    required this.mapUrl,
    required this.xMultiplier,
    required this.yMultiplier,
    required this.xScalarToAdd,
    required this.yScalarToAdd,
    required this.callouts,
  });

  final String uuid;
  final String displayName;
  final String coordinates;
  final String? displayIcon;
  final String listViewIcon;
  final String splash;
  final String assetPath;
  final String mapUrl;
  final double xMultiplier;
  final double yMultiplier;
  final double xScalarToAdd;
  final double yScalarToAdd;
  final List<CallOutModel>? callouts;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        coordinates,
        displayIcon,
        listViewIcon,
        splash,
        assetPath,
        mapUrl,
        xMultiplier,
        yMultiplier,
        xScalarToAdd,
        yScalarToAdd,
        callouts,
      ];
}
