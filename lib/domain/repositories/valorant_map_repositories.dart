import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/map_entity.dart';

abstract class ValorantMapRepository {
  Future<Either<Failure, List<MapEntity>>> getMaps();
}
