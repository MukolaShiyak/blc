import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/remote_data_source.dart';
import 'package:valorant_app/data/datasource/valorant_bunddle_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/bundle_model/bunddle_model.dart';
import 'package:valorant_app/domain/entities/bunddle_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_bunddle_repositories.dart';

class ValorantBunddleRepositoryImpl implements ValorantBunddleRepository {
  final ValorantBunddleApi valorantBunddleApi;

  ValorantBunddleRepositoryImpl({required this.valorantBunddleApi});

  @override
  Future<Either<Failure, List<Bunddle>>> getBunddles() async {
    try {
      final List<BunddleModel> result = await valorantBunddleApi.getBunddles();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
