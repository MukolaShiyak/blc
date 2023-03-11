import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/valorant_competetive_tiers_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/competetive_tears_model/competetive_tiers_model.dart';
import 'package:valorant_app/domain/entities/competetiv_tier_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_competetive_tiers_repositories.dart';

class ValorantCompetetiveTiersRepositoryImpl
    implements ValorantCompetetiveTiersRepository {
  final ValorantCompetetiveTiersApi valorantCompetetiveTiersApi;

  ValorantCompetetiveTiersRepositoryImpl(
      {required this.valorantCompetetiveTiersApi});

  @override
  Future<Either<Failure, List<CompetetiveTiers>>> getCompetetiveTiers() async {
    try {
      final List<CompetetiveTiersModel> result =
          await valorantCompetetiveTiersApi.getCompetetiveTiers();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
