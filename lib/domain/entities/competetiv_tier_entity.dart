import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/competetive_tears_model/tier_model/tier_model.dart';
import 'package:valorant_app/domain/entities/ceremony_entity.dart';

class CompetetiveTiers extends Equatable {
  const CompetetiveTiers({
    required this.uuid,
    required this.assetObjectName,
    required this.tiers,
    required this.assetPath,
  });

  final String uuid;
  final String? assetObjectName;
  final List<TierModel> tiers;
  final String assetPath;

  @override
  List<Object?> get props => [
        uuid,
        assetObjectName,
        tiers,
        assetPath,
      ];
}
