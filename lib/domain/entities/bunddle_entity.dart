import 'package:equatable/equatable.dart';

class Bunddle extends Equatable {
  const Bunddle({
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
