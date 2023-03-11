class LocationModel {
  final double x;
  final double y;

  LocationModel({
    required this.x,
    required this.y,
  });

  factory LocationModel.fromJson(Map<String, dynamic> map) {
    return LocationModel(
      x: (map['x'] as num).toDouble(),
      y: (map['y'] as num).toDouble(),
    );
  }
}
