import 'dart:convert';

// import 'package:flutter_weather_app_sample/data/constants.dart';
// import 'package:flutter_weather_app_sample/data/exception.dart';
// import 'package:flutter_weather_app_sample/data/models/weather_model.dart';
// import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:valorant_app/data/constants.dart';
import 'package:valorant_app/data/exception.dart';
import 'package:valorant_app/data/models/agents_model/valorant_character_model.dart';

abstract class ValorantAgentsApi {
  Future<List<ValorantCharacterModel>> getValorantCharacters();

  // Future<List<BuddiesModel>> getBuddies();

  // Future<List<BunddleModel>> getBunddles();

  // Future<List<CeremonyModel>> getCeremonies();
}

class ValorantAgentsApiImpl implements ValorantAgentsApi {
  // final http.Client client;
  final Dio dio;
  ValorantAgentsApiImpl({required this.dio});

  @override
  Future<List<ValorantCharacterModel>> getValorantCharacters() async {
    final response =
        await dio.get('${Urls.baseUrl}agents?isPlayableCharacter=true');

    print('responseIs: $response');

    if (response.statusCode == 200) {
      List<dynamic> responseList =
          ((response.data as Map<String, dynamic>)['data'] as List);

      List<ValorantCharacterModel> data = responseList
          .map((dynamic e) =>
              ValorantCharacterModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw ServerException();
    }
  }

  // @override
  // Future<List<BuddiesModel>> getBuddies() async {
  //   final response = await dio.get('${Urls.baseUrl}buddies');

  //   print('responseIs: $response');

  //   if (response.statusCode == 200) {
  //     List<dynamic> responseList =
  //         ((response.data as Map<String, dynamic>)['data'] as List);

  //     List<BuddiesModel> data = responseList
  //         .map((dynamic e) => BuddiesModel.fromJson(e as Map<String, dynamic>))
  //         .toList();
  //     return data;
  //   } else {
  //     throw ServerException();
  //   }
  // }

  // @override
  // Future<List<BunddleModel>> getBunddles() async {
  //   final response = await dio.get('${Urls.baseUrl}bundles');

  //   print('responseIs: $response');

  //   if (response.statusCode == 200) {
  //     List<dynamic> responseList =
  //         ((response.data as Map<String, dynamic>)['data'] as List);

  //     List<BunddleModel> data = responseList
  //         .map((dynamic e) => BunddleModel.fromJson(e as Map<String, dynamic>))
  //         .toList();
  //     return data;
  //   } else {
  //     throw ServerException();
  //   }
  // }

  // @override
  // Future<List<CeremonyModel>> getCeremonies() async {
  //   final response = await dio.get('${Urls.baseUrl}ceremonies');

  //   print('responseIs: $response');

  //   if (response.statusCode == 200) {
  //     List<dynamic> responseList =
  //         ((response.data as Map<String, dynamic>)['data'] as List);

  //     List<CeremonyModel> data = responseList
  //         .map((dynamic e) => CeremonyModel.fromJson(e as Map<String, dynamic>))
  //         .toList();
  //     return data;
  //   } else {
  //     throw ServerException();
  //   }
  // }
}
