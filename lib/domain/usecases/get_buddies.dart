import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/buddie_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_buddies_repositories.dart';

class GetValorantBuddies {
  final ValorantBuddiesRepository repository;

  GetValorantBuddies(this.repository);

  Future<Either<Failure, List<Buddie>>> executeBuddie() {
    return repository.getBuddies();
  }
}
