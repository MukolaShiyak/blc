import 'package:equatable/equatable.dart';
import 'package:valorant_app/data/models/agents_model/abilities_model.dart';
import 'package:valorant_app/data/models/agents_model/role_model.dart';
import 'package:valorant_app/data/models/agents_model/voice_line_model.dart';

class Valorant extends Equatable {
  const Valorant({
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
