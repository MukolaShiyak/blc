import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/valorant_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_characters_repositories.dart';

class GetValorantCharacters {
  final ValorantCharactersRepository repository;

  GetValorantCharacters(this.repository);

  Future<Either<Failure, List<Valorant>>> execute() {
    return repository.getValorantCharacters();
  }
}
