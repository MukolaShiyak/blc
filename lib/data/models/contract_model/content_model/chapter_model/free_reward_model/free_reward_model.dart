import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/contract_model/content_model/chapter_model/level_model/level_model.dart';

class FreeRewardModel extends Equatable {
  const FreeRewardModel({
    required this.type,
    required this.uuid,
    required this.amount,
    required this.isHighlighted,
  });

  final String type;
  final String uuid;
  final int amount;
  final bool isHighlighted;

  factory FreeRewardModel.fromJson(Map<String, dynamic> json) =>
      FreeRewardModel(
        type: json['type'],
        uuid: json['uuid'],
        amount: json['amount'],
        isHighlighted: json['isHighlighted'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'uuid': uuid,
        'amount': amount,
        'isHighlighted': isHighlighted,
      };

  @override
  List<Object?> get props => [
        type,
        uuid,
        amount,
        isHighlighted,
      ];
}
