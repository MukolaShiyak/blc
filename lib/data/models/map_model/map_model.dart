import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/map_model/callOut_model/callOut_model.dart';
import 'package:valorant_app/domain/entities/map_entity.dart';

class MapModel extends Equatable {
  const MapModel({
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

  factory MapModel.fromJson(Map<String, dynamic> json) => MapModel(
        uuid: json['uuid'],
        displayName: json['displayName'],
        coordinates: json['coordinates'],
        displayIcon: json['displayIcon'],
        listViewIcon: json['listViewIcon'],
        splash: json['splash'],
        assetPath: json['assetPath'],
        mapUrl: json['mapUrl'],
        xMultiplier: (json['xMultiplier'] as num).toDouble(),
        yMultiplier: (json['yMultiplier'] as num).toDouble(),
        xScalarToAdd: (json['xScalarToAdd'] as num).toDouble(),
        yScalarToAdd: (json['yScalarToAdd'] as num).toDouble(),
        callouts: json['callouts'] == null
            ? null
            : List.from(json['callouts'] as List)
                .map((e) => CallOutModel.fromJson(e as Map<String, dynamic>))
                .toList(),
      );

  MapEntity toEntity() => MapEntity(
        uuid: uuid,
        displayName: displayName,
        coordinates: coordinates,
        displayIcon: displayIcon,
        listViewIcon: listViewIcon,
        splash: splash,
        assetPath: assetPath,
        mapUrl: mapUrl,
        xMultiplier: xMultiplier,
        yMultiplier: yMultiplier,
        xScalarToAdd: xScalarToAdd,
        yScalarToAdd: yScalarToAdd,
        callouts: callouts,
      );

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
