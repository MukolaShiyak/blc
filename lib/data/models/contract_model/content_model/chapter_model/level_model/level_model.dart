import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/contract_model/content_model/chapter_model/level_model/reward_model/reward_model.dart';

class LevelModel extends Equatable {
  const LevelModel({
    required this.reward,
    required this.xp,
    required this.vpCost,
    required this.isPurchasableWithVP,
  });

  final RewardModel reward;
  final int xp;
  final int vpCost;
  final bool isPurchasableWithVP;

  factory LevelModel.fromJson(Map<String, dynamic> json) => LevelModel(
        reward: RewardModel.fromJson(json['reward']),
        xp: json['xp'],
        vpCost: json['vpCost'],
        isPurchasableWithVP: json['isPurchasableWithVP'],
      );

  Map<String, dynamic> toJson() => {
        'reward': reward,
        'xp': xp,
        'vpCost': vpCost,
        'isPurchasableWithVP': isPurchasableWithVP,
      };

  @override
  List<Object?> get props => [
        reward,
        xp,
        vpCost,
        isPurchasableWithVP,
      ];
}
