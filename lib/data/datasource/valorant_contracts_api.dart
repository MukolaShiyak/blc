import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/contract_model/contract_model.dart';

abstract class ValorantContractsApi {
  Future<List<ContractModel>> getContracts();
}

class ValorantContractsApiImpl implements ValorantContractsApi {
  final Dio dio;
  ValorantContractsApiImpl({required this.dio});

  @override
  Future<List<ContractModel>> getContracts() async {
    final response = await dio.get('${Urls.baseUrl}contracts');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<ContractModel> data = responseList
          .map((dynamic e) => ContractModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }
}
