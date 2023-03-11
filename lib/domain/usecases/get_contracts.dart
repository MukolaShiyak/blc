import 'package:dartz/dartz.dart';
import 'package:valorant_app/data/failure.dart';
import 'package:valorant_app/domain/entities/contracts_entity.dart';
import 'package:valorant_app/domain/repositories/valorant_contracts_repositories.dart';

class GetValorantContracts {
  final ValorantContractsRepository repository;

  GetValorantContracts(this.repository);

  Future<Either<Failure, List<Contract>>> executeContracts() {
    return repository.getContracts();
  }
}
