import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/valorant_agents_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/agents_model/valorant_character_model.dart';
import 'package:valorant_app/domain/entities/valorant_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_characters_repositories.dart';

class ValorantRepositoryImpl implements ValorantCharactersRepository {
  final ValorantAgentsApi valorantAgentsApi;

  ValorantRepositoryImpl({required this.valorantAgentsApi});

  @override
  Future<Either<Failure, List<Valorant>>> getValorantCharacters() async {
    try {
      final List<ValorantCharacterModel> result =
          await valorantAgentsApi.getValorantCharacters();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
