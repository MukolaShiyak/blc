import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/ceremony_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_ceremony_repositories.dart';

class GetValorantCeremonies {
  final ValorantCeremonyRepository repository;

  GetValorantCeremonies(this.repository);

  Future<Either<Failure, List<Ceremony>>> executeCeremonies() {
    return repository.getCeremonies();
  }
}
