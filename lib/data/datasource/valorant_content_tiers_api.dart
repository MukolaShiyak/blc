import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/competetive_tears_model/competetive_tiers_model.dart';
import 'package:valorant_app/data/models/content_tiers_model/content_tiers_model.dart';

abstract class ValorantContentTiersApi {
  Future<List<ContentTiersModel>> getContentTiers();
}

class ValorantContentTiersApiImpl implements ValorantContentTiersApi {
  final Dio dio;
  ValorantContentTiersApiImpl({required this.dio});

  @override
  Future<List<ContentTiersModel>> getContentTiers() async {
    final response = await dio.get('${Urls.baseUrl}contenttiers');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<ContentTiersModel> data = responseList
          .map((dynamic e) =>
              ContentTiersModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }
}
