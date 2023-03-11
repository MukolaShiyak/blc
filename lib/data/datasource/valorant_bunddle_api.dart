import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/bundle_model/bunddle_model.dart';

abstract class ValorantBunddleApi {
  Future<List<BunddleModel>> getBunddles();
}

class ValorantBunddleApiImpl implements ValorantBunddleApi {
  final Dio dio;
  ValorantBunddleApiImpl({required this.dio});

  @override
  Future<List<BunddleModel>> getBunddles() async {
    final response = await dio.get('${Urls.baseUrl}bundles');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<BunddleModel> data = responseList
          .map((dynamic e) => BunddleModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }
}
