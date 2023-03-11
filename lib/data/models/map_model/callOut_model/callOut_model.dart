import 'package:valorant_app/data/models/map_model/callOut_model/location_model/location_model.dart';

class CallOutModel {
  final String regionName;
  final String superRegionName;
  final LocationModel location;

  CallOutModel({
    required this.regionName,
    required this.superRegionName,
    required this.location,
  });

  factory CallOutModel.fromJson(Map<String, dynamic> map) {
    return CallOutModel(
      regionName: map['regionName'] as String,
      superRegionName: map['superRegionName'] as String,
      location: LocationModel.fromJson(map['location'] as Map<String, dynamic>),
    );
  }
}
