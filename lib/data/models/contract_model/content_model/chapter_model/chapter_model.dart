import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/contract_model/content_model/chapter_model/free_reward_model/free_reward_model.dart';
import 'package:valorant_app/data/models/contract_model/content_model/chapter_model/level_model/level_model.dart';

class ChapterModel extends Equatable {
  const ChapterModel({
    required this.isEpilogue,
    required this.levels,
    required this.freeRewards,
  });

  final bool isEpilogue;
  final List<LevelModel> levels;
  final List<FreeRewardModel>? freeRewards;

  factory ChapterModel.fromJson(Map<String, dynamic> json) => ChapterModel(
        isEpilogue: json['isEpilogue'],
        levels: (json['levels'] as List)
            .map((e) => LevelModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        freeRewards: json['freeRewards'] == null
            ? null
            : (json['freeRewards'] as List)
                .map((e) => FreeRewardModel.fromJson(e as Map<String, dynamic>))
                .toList(),
      );

  Map<String, dynamic> toJson() => {
        'isEpilogue': isEpilogue,
        'levels': levels,
        'freeRewards': freeRewards,
      };

  @override
  List<Object?> get props => [
        isEpilogue,
        levels,
        freeRewards,
      ];
}
