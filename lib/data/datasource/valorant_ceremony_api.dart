import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/ceremony_model/ceremony_model.dart';

abstract class ValorantCeremonyApi {
  Future<List<CeremonyModel>> getCeremonies();
}

class ValorantCeremonyApiImpl implements ValorantCeremonyApi {
  final Dio dio;
  ValorantCeremonyApiImpl({required this.dio});

  @override
  Future<List<CeremonyModel>> getCeremonies() async {
    final response = await dio.get('${Urls.baseUrl}ceremonies');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<CeremonyModel> data = responseList
          .map((dynamic e) => CeremonyModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }
}
