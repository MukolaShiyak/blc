import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/valorant_entity.dart';

abstract class ValorantCharactersRepository {
  Future<Either<Failure, List<Valorant>>> getValorantCharacters();
}
