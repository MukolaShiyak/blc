import 'package:equatable/equatable.dart';
import 'package:valorant_app/domain/entities/buddie_entity.dart';
import 'package:valorant_app/domain/entities/bunddle_entity.dart';
import 'package:valorant_app/domain/entities/ceremony_entity.dart';
import 'package:valorant_app/domain/entities/competetiv_tier_entity.dart';
import 'package:valorant_app/domain/entities/content_tiers.dart';
import 'package:valorant_app/domain/entities/contracts_entity.dart';
import 'package:valorant_app/domain/entities/map_entity.dart';
import 'package:valorant_app/domain/entities/valorant_entity.dart';

abstract class ValorantState extends Equatable {
  const ValorantState();

  @override
  List<Object?> get props => [];
}

class ValorantEmpty extends ValorantState {}

class ValorantLoading extends ValorantState {}

class ValorantError extends ValorantState {
  final String message;

  ValorantError(this.message);

  @override
  List<Object?> get props => [message];
}

class ValorantHasData extends ValorantState {
  final List<Valorant> result;

  ValorantHasData(this.result);

  @override
  List<Object?> get props => [result];
}

class ValorantHasBuddiesData extends ValorantState {
  final List<Buddie> buddies;

  ValorantHasBuddiesData(this.buddies);

  @override
  List<Object?> get props => [buddies];
}

class ValorantHasBunddleData extends ValorantState {
  final List<Bunddle> bunddle;

  ValorantHasBunddleData(this.bunddle);

  @override
  List<Object?> get props => [bunddle];
}

class ValorantHasCeremonyData extends ValorantState {
  final List<Ceremony> ceremony;

  ValorantHasCeremonyData(this.ceremony);

  @override
  List<Object?> get props => [ceremony];
}

class ValorantHasCompetetiveTiersData extends ValorantState {
  final List<CompetetiveTiers> competetiveTiers;

  ValorantHasCompetetiveTiersData(this.competetiveTiers);

  @override
  List<Object?> get props => [competetiveTiers];
}

class ValorantHasContentTiersData extends ValorantState {
  final List<ContentTiers> contentTiers;

  ValorantHasContentTiersData(this.contentTiers);

  @override
  List<Object?> get props => [contentTiers];
}

class ValorantHasContractsData extends ValorantState {
  final List<Contract> contracts;

  ValorantHasContractsData(this.contracts);

  @override
  List<Object?> get props => [contracts];
}

class ValorantHasMapsData extends ValorantState {
  final List<MapEntity> maps;

  ValorantHasMapsData(this.maps);

  @override
  List<Object?> get props => [maps];
}
