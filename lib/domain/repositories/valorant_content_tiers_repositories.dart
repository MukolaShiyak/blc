import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/content_tiers.dart';

abstract class ValorantContentTiersRepository {
  Future<Either<Failure, List<ContentTiers>>> getContentTiers();
}
