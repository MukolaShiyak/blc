import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/datasource/valorant_contracts_api.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/data/models/contract_model/contract_model.dart';
import 'package:valorant_app/domain/entities/contracts_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_contracts_repositories.dart';

class ValorantContractsRepositoryImpl implements ValorantContractsRepository {
  final ValorantContractsApi valorantContentTiersApi;

  ValorantContractsRepositoryImpl({required this.valorantContentTiersApi});

  @override
  Future<Either<Failure, List<Contract>>> getContracts() async {
    try {
      final List<ContractModel> result =
          await valorantContentTiersApi.getContracts();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
