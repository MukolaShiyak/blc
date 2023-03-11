import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/buddies_model/buddie_model.dart';

abstract class ValorantBuddiesApi {
  Future<List<BuddiesModel>> getBuddies();
}

class ValorantBuddiesApiImpl implements ValorantBuddiesApi {
  final Dio dio;

  ValorantBuddiesApiImpl({required this.dio});

  @override
  Future<List<BuddiesModel>> getBuddies() async {
    final response = await dio.get('${Urls.baseUrl}buddies');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<BuddiesModel> data = responseList
          .map((dynamic e) => BuddiesModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }
}
