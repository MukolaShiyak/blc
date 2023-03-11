import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/contract_model/content_model/content_model.dart';
import 'package:valorant_app/domain/entities/content_tiers.dart';

class Contract extends Equatable {
  const Contract({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.shipIt,
    required this.freeRewardScheduleUuid,
    required this.content,
    required this.assetPath,
  });

  final String uuid;
  final String displayName;
  final String? displayIcon;
  final bool shipIt;
  final String freeRewardScheduleUuid;
  final ContentModel content;
  final String assetPath;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        displayIcon,
        shipIt,
        freeRewardScheduleUuid,
        content,
        assetPath,
      ];
}
