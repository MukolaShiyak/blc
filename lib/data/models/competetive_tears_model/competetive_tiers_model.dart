import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/competetive_tears_model/tier_model/tier_model.dart';
import 'package:valorant_app/domain/entities/competetiv_tier_entity.dart';

class CompetetiveTiersModel extends Equatable {
  const CompetetiveTiersModel({
    required this.uuid,
    required this.assetObjectName,
    required this.tiers,
    required this.assetPath,
  });

  final String uuid;
  final String? assetObjectName;
  final List<TierModel> tiers;
  final String assetPath;

  factory CompetetiveTiersModel.fromJson(Map<String, dynamic> json) =>
      CompetetiveTiersModel(
        uuid: json['uuid'],
        assetObjectName: json['assetObjectName'],
        tiers: (json['tiers'] as List)
            .map((e) => TierModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        assetPath: json['assetPath'],
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'assetObjectName': assetObjectName,
        'tiers': tiers,
        'assetPath': assetPath,
      };

  CompetetiveTiers toEntity() => CompetetiveTiers(
        uuid: uuid,
        assetObjectName: assetObjectName,
        tiers: tiers,
        assetPath: assetPath,
      );

  @override
  List<Object?> get props => [
        uuid,
        assetObjectName,
        tiers,
        assetPath,
      ];
}
