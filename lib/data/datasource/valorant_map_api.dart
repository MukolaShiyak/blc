import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/map_model/map_model.dart';

abstract class ValorantMapApi {
  Future<List<MapModel>> getMaps();
}

class ValorantMapApiImpl implements ValorantMapApi {
  final Dio dio;
  ValorantMapApiImpl({required this.dio});

  @override
  Future<List<MapModel>> getMaps() async {
    final response = await dio.get('${Urls.baseUrl}maps');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<MapModel> data = responseList
          .map((dynamic e) => MapModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }
}
