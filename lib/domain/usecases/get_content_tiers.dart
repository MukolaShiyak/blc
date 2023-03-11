import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/content_tiers.dart';
import 'package:valorant_app/domain/repositories/valorant_content_tiers_repositories.dart';

class GetValorantContentTiers {
  final ValorantContentTiersRepository repository;

  GetValorantContentTiers(this.repository);

  Future<Either<Failure, List<ContentTiers>>> executeContentTiers() {
    return repository.getContentTiers();
  }
}
