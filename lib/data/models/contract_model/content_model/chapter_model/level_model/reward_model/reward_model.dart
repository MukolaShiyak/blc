import 'package:equatable/equatable.dart';

class RewardModel extends Equatable {
  const RewardModel({
    required this.type,
    required this.uuid,
    required this.amount,
    required this.isHighlighted,
  });

  final String type;
  final String uuid;
  final int amount;
  final bool isHighlighted;

  factory RewardModel.fromJson(Map<String, dynamic> json) => RewardModel(
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
