import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/competetiv_tier_entity.dart';

abstract class ValorantCompetetiveTiersRepository {
  Future<Either<Failure, List<CompetetiveTiers>>> getCompetetiveTiers();
}
