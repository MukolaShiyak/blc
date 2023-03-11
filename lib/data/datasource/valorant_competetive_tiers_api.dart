import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/competetive_tears_model/competetive_tiers_model.dart';

abstract class ValorantCompetetiveTiersApi {
  Future<List<CompetetiveTiersModel>> getCompetetiveTiers();
}

class ValorantCompetetiveTiersApiImpl implements ValorantCompetetiveTiersApi {
  final Dio dio;
  ValorantCompetetiveTiersApiImpl({required this.dio});

  @override
  Future<List<CompetetiveTiersModel>> getCompetetiveTiers() async {
    final response = await dio.get('${Urls.baseUrl}competitivetiers');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<CompetetiveTiersModel> data = responseList
          .map((dynamic e) =>
              CompetetiveTiersModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }
}
