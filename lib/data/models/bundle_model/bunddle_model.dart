import 'package:equatable/equatable.dart';
import 'package:valorant_app/domain/entities/buddie_entity.dart';
import 'package:valorant_app/domain/entities/bunddle_entity.dart';

class BunddleModel extends Equatable {
  const BunddleModel({
    required this.uuid,
    required this.displayName,
    required this.displayNameSubText,
    required this.description,
    required this.extraDescription,
    required this.promoDescription,
    required this.useAdditionalContext,
    required this.displayIcon,
    required this.displayIcon2,
    required this.verticalPromoImage,
    required this.assetPath,
  });

  final String uuid;
  final String displayName;
  final String? displayNameSubText;
  final String description;
  final String? extraDescription;
  final String? promoDescription;
  final bool useAdditionalContext;
  final String displayIcon;
  final String displayIcon2;
  final String? verticalPromoImage;
  final String assetPath;

  factory BunddleModel.fromJson(Map<String, dynamic> json) => BunddleModel(
        uuid: json['uuid'],
        displayName: json['displayName'],
        displayNameSubText: json['displayNameSubText'],
        description: json['description'],
        extraDescription: json['extraDescription'],
        promoDescription: json['promoDescription'],
        useAdditionalContext: json['useAdditionalContext'],
        displayIcon: json['displayIcon'],
        displayIcon2: json['displayIcon'],
        verticalPromoImage: json['verticalPromoImage'],
        assetPath: json['assetPath'],
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'displayName': displayName,
        'displayNameSubText': displayNameSubText,
        'description': description,
        'extraDescription': extraDescription,
        'promoDescription': promoDescription,
        'useAdditionalContext': useAdditionalContext,
        'displayIcon': displayIcon,
        'displayIcon2': displayIcon2,
        'verticalPromoImage': verticalPromoImage,
        'assetPath': assetPath,
      };

  Bunddle toEntity() => Bunddle(
        uuid: uuid,
        displayName: displayName,
        displayNameSubText: displayNameSubText,
        description: description,
        extraDescription: extraDescription,
        promoDescription: promoDescription,
        useAdditionalContext: useAdditionalContext,
        displayIcon: displayIcon,
        displayIcon2: displayIcon2,
        verticalPromoImage: verticalPromoImage,
        assetPath: assetPath,
      );

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        displayNameSubText,
        description,
        extraDescription,
        promoDescription,
        useAdditionalContext,
        displayIcon,
        displayIcon2,
        verticalPromoImage,
        assetPath,
      ];
}
