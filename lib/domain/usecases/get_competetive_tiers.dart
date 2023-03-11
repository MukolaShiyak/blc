import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/competetiv_tier_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_competetive_tiers_repositories.dart';

class GetValorantCompetetiveTiers {
  final ValorantCompetetiveTiersRepository repository;

  GetValorantCompetetiveTiers(this.repository);

  Future<Either<Failure, List<CompetetiveTiers>>> executeCompetetiveTiers() {
    return repository.getCompetetiveTiers();
  }
}
