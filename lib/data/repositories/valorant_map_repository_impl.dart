import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/valorant_map_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/map_model/map_model.dart';
import 'package:valorant_app/domain/entities/map_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_map_repositories.dart';

class ValorantMapRepositoryImpl implements ValorantMapRepository {
  final ValorantMapApi valorantMapApi;

  ValorantMapRepositoryImpl({required this.valorantMapApi});

  @override
  Future<Either<Failure, List<MapEntity>>> getMaps() async {
    try {
      final List<MapModel> result = await valorantMapApi.getMaps();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
