import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/valorant_competetive_tiers_api.dart';
import 'package:valorant_app/data/datasource/valorant_content_tiers_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/competetive_tears_model/competetive_tiers_model.dart';
import 'package:valorant_app/data/models/content_tiers_model/content_tiers_model.dart';
import 'package:valorant_app/domain/entities/competetiv_tier_entity.dart';
import 'package:valorant_app/domain/entities/content_tiers.dart';
import 'package:valorant_app/domain/repositories/valorant_competetive_tiers_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_content_tiers_repositories.dart';

class ValorantContentTiersRepositoryImpl
    implements ValorantContentTiersRepository {
  final ValorantContentTiersApi valorantContentTiersApi;

  ValorantContentTiersRepositoryImpl({required this.valorantContentTiersApi});

  @override
  Future<Either<Failure, List<ContentTiers>>> getContentTiers() async {
    try {
      final List<ContentTiersModel> result =
          await valorantContentTiersApi.getContentTiers();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
