import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/agents_model/abilities_model.dart';
import 'package:valorant_app/data/models/agents_model/role_model.dart';
import 'package:valorant_app/data/models/agents_model/voice_line_model.dart';
import 'package:valorant_app/domain/entities/valorant_entity.dart';

class ValorantCharacterModel extends Equatable {
  const ValorantCharacterModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.developerName,
    this.characterTags,
    required this.displayIcon,
    required this.displayIconSmall,
    required this.bustPortrait,
    required this.fullPortrait,
    required this.fullPortraitV2,
    required this.killfeedPortrait,
    required this.background,
    required this.backgroundGradientColors,
    required this.assetPath,
    required this.isFullPortraitRightFacing,
    required this.isPlayableCharacter,
    required this.isAvailableForTest,
    required this.isBaseContent,
    required this.role,
    required this.abilities,
    required this.voiceLine,
  });

  final String uuid;
  final String displayName;
  final String description;
  final String developerName;
  final List<String>? characterTags;
  final String displayIcon;
  final String displayIconSmall;
  final String? bustPortrait;
  final String? fullPortrait;
  final String? fullPortraitV2;
  final String killfeedPortrait;
  final String? background;
  final List<String> backgroundGradientColors;
  final String assetPath;
  final bool isFullPortraitRightFacing;
  final bool isPlayableCharacter;
  final bool isAvailableForTest;
  final bool isBaseContent;
  final AgentRoleModel role;
  final List<AbilitiesModel> abilities;
  final VoiceLineModel voiceLine;

  factory ValorantCharacterModel.fromJson(Map<String, dynamic> json) =>
      ValorantCharacterModel(
        uuid: json['uuid'],
        displayName: json['displayName'],
        description: json['description'],
        developerName: json['developerName'],
        characterTags: json['characterTags'] != null
            ? List<String>.from(json['characterTags'])
            : null,
        displayIcon: json['displayIcon'],
        displayIconSmall: json['displayIconSmall'],
        bustPortrait: json['bustPortrait'],
        fullPortrait: json['fullPortrait'],
        fullPortraitV2: json['fullPortraitV2'],
        killfeedPortrait: json['killfeedPortrait'],
        background: json['background'],
        backgroundGradientColors:
            List<String>.from(json['backgroundGradientColors']),
        assetPath: json['assetPath'],
        isFullPortraitRightFacing: json['isFullPortraitRightFacing'],
        isPlayableCharacter: json['isPlayableCharacter'],
        isAvailableForTest: json['isAvailableForTest'],
        isBaseContent: json['isBaseContent'],
        role: AgentRoleModel.fromJson(json['role']),
        abilities: (json['abilities'] as List)
            .map((e) => AbilitiesModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        voiceLine: VoiceLineModel.fromJson(json['voiceLine']),
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'displayName': displayName,
        'description': description,
        'developerName': developerName,
        'characterTags': characterTags,
        'displayIcon': displayIcon,
        'displayIconSmall': displayIconSmall,
        'bustPortrait': bustPortrait,
        'fullPortrait': fullPortrait,
        'fullPortraitV2': fullPortraitV2,
        'killfeedPortrait': killfeedPortrait,
        'background': background,
        'backgroundGradientColors': backgroundGradientColors,
        'assetPath': assetPath,
        'isFullPortraitRightFacing': isFullPortraitRightFacing,
        'isPlayableCharacter': isPlayableCharacter,
        'isAvailableForTest': isAvailableForTest,
        'isBaseContent': isBaseContent,
        'role': role,
        'abilities': abilities,
        'voiceLine': voiceLine,
      };

  Valorant toEntity() => Valorant(
        uuid: uuid,
        displayName: displayName,
        description: description,
        developerName: developerName,
        characterTags: characterTags,
        displayIcon: displayIcon,
        displayIconSmall: displayIconSmall,
        bustPortrait: bustPortrait,
        fullPortrait: fullPortrait,
        fullPortraitV2: fullPortraitV2,
        killfeedPortrait: killfeedPortrait,
        background: background,
        backgroundGradientColors: backgroundGradientColors,
        assetPath: assetPath,
        isFullPortraitRightFacing: isFullPortraitRightFacing,
        isPlayableCharacter: isPlayableCharacter,
        isAvailableForTest: isAvailableForTest,
        isBaseContent: isBaseContent,
        role: role,
        abilities: abilities,
        voiceLine: voiceLine,
      );

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        description,
        developerName,
        characterTags,
        displayIcon,
        displayIconSmall,
        bustPortrait,
        fullPortrait,
        fullPortraitV2,
        killfeedPortrait,
        background,
        backgroundGradientColors,
        assetPath,
        isFullPortraitRightFacing,
        isPlayableCharacter,
        isAvailableForTest,
        isBaseContent,
        role,
        abilities,
        voiceLine,
      ];
}
