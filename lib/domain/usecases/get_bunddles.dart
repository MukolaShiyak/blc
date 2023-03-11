import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/bunddle_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_bunddle_repositories.dart';

class GetValorantBunddles {
  final ValorantBunddleRepository repository;

  GetValorantBunddles(this.repository);

  Future<Either<Failure, List<Bunddle>>> executeBunddle() {
    return repository.getBunddles();
  }
}
