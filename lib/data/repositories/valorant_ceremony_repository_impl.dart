import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/valorant_ceremony_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/ceremony_model/ceremony_model.dart';
import 'package:valorant_app/domain/entities/ceremony_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_ceremony_repositories.dart';

class ValorantCeremonyRepositoryImpl implements ValorantCeremonyRepository {
  final ValorantCeremonyApi valorantCeremonyApi;

  ValorantCeremonyRepositoryImpl({required this.valorantCeremonyApi});

  @override
  Future<Either<Failure, List<Ceremony>>> getCeremonies() async {
    try {
      final List<CeremonyModel> result =
          await valorantCeremonyApi.getCeremonies();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
