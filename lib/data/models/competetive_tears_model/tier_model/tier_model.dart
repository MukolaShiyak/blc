class TierModel {
  const TierModel({
    required this.tier,
    required this.tierName,
    required this.division,
    required this.divisionName,
    required this.color,
    required this.backgroundColor,
    required this.smallIcon,
    required this.largeIcon,
    required this.rankTriangleDownIcon,
    required this.rankTriangleUpIcon,
  });

  final int tier;
  final String tierName;
  final String division;
  final String divisionName;
  final String color;
  final String backgroundColor;
  final String? smallIcon;
  final String? largeIcon;
  final String? rankTriangleDownIcon;
  final String? rankTriangleUpIcon;

  factory TierModel.fromJson(Map<String, dynamic> json) => TierModel(
        tier: json['tier'],
        tierName: json['tierName'],
        division: json['division'],
        divisionName: json['divisionName'],
        color: json['color'],
        backgroundColor: json['backgroundColor'],
        smallIcon: json['smallIcon'],
        largeIcon: json['largeIcon'],
        rankTriangleDownIcon: json['rankTriangleDownIcon'],
        rankTriangleUpIcon: json['rankTriangleUpIcon'],
      );

  Map<String, dynamic> toJson() => {
        'tier': tier,
        'tierName': tierName,
        'division': division,
        'divisionName': divisionName,
        'color': color,
        'backgroundColor': backgroundColor,
        'smallIcon': smallIcon,
        'largeIcon': largeIcon,
        'rankTriangleDownIcon': rankTriangleDownIcon,
        'rankTriangleUpIcon': rankTriangleUpIcon,
      };
}
