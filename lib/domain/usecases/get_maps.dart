import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/map_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_map_repositories.dart';

class GetValorantMaps {
  final ValorantMapRepository repository;

  GetValorantMaps(this.repository);

  Future<Either<Failure, List<MapEntity>>> executeMaps() {
    return repository.getMaps();
  }
}
