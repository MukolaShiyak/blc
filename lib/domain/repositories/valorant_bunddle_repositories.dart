import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/bunddle_entity.dart';

abstract class ValorantBunddleRepository {
  Future<Either<Failure, List<Bunddle>>> getBunddles();
}
