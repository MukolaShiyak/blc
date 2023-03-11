import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/ceremony_entity.dart';

abstract class ValorantCeremonyRepository {
  Future<Either<Failure, List<Ceremony>>> getCeremonies();
}
