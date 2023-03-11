import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/contract_model/content_model/content_model.dart';
import 'package:valorant_app/domain/entities/contracts_entity.dart';

class ContractModel extends Equatable {
  const ContractModel({
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

  factory ContractModel.fromJson(Map<String, dynamic> json) => ContractModel(
        uuid: json['uuid'],
        displayName: json['displayName'],
        displayIcon: json['displayIcon'],
        shipIt: json['shipIt'],
        freeRewardScheduleUuid: json['freeRewardScheduleUuid'],
        content: ContentModel.fromJson(json['content']),
        assetPath: json['assetPath'],
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'displayName': displayName,
        'displayIcon': displayIcon,
        'shipIt': shipIt,
        'freeRewardScheduleUuid': freeRewardScheduleUuid,
        'content': content,
        'assetPath': assetPath,
      };

  Contract toEntity() => Contract(
        uuid: uuid,
        displayName: displayName,
        displayIcon: displayIcon,
        shipIt: shipIt,
        freeRewardScheduleUuid: freeRewardScheduleUuid,
        content: content,
        assetPath: assetPath,
      );

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
