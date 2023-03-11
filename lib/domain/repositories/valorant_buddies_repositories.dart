import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/buddie_entity.dart';

abstract class ValorantBuddiesRepository {
  Future<Either<Failure, List<Buddie>>> getBuddies();
}
