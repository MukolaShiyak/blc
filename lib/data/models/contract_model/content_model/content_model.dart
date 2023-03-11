import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/contract_model/content_model/chapter_model/chapter_model.dart';

class ContentModel extends Equatable {
  const ContentModel({
    required this.relationType,
    required this.relationUuid,
    required this.chapters,
    required this.premiumRewardScheduleUuid,
    required this.premiumVPCost,
  });

  final String? relationType;
  final String? relationUuid;
  final List<ChapterModel> chapters;
  final String? premiumRewardScheduleUuid;
  final int premiumVPCost;

  factory ContentModel.fromJson(Map<String, dynamic> json) => ContentModel(
        relationType: json['relationType'],
        relationUuid: json['relationUuid'],
        chapters: (json['chapters'] as List)
            .map((e) => ChapterModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        premiumRewardScheduleUuid: json['premiumRewardScheduleUuid'],
        premiumVPCost: json['premiumVPCost'],
      );

  Map<String, dynamic> toJson() => {
        'relationType': relationType,
        'relationUuid': relationUuid,
        'chapters': chapters,
        'premiumRewardScheduleUuid': premiumRewardScheduleUuid,
        'premiumVPCost': premiumVPCost,
      };

  @override
  List<Object?> get props => [
        relationType,
        relationUuid,
        chapters,
        premiumRewardScheduleUuid,
        premiumVPCost,
      ];
}
