import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/valorant_buddies_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/buddies_model/buddie_model.dart';
import 'package:valorant_app/domain/entities/buddie_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_buddies_repositories.dart';

class ValorantBuddieRepositoryImpl implements ValorantBuddiesRepository {
  final ValorantBuddiesApi valorantBuddiesApi;

  ValorantBuddieRepositoryImpl({required this.valorantBuddiesApi});

  @override
  Future<Either<Failure, List<Buddie>>> getBuddies() async {
    try {
      final List<BuddiesModel> result = await valorantBuddiesApi.getBuddies();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
