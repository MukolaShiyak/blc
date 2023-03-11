import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/contracts_entity.dart';

abstract class ValorantContractsRepository {
  Future<Either<Failure, List<Contract>>> getContracts();
}
