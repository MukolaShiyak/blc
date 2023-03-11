// import 'package:flutter_weather_app_sample/data/datasources/remote_data_source.dart';
// import 'package:flutter_weather_app_sample/data/repositories/weather_repository_impl.dart';
// import 'package:flutter_weather_app_sample/domain/repositories/weather_repository.dart';
// import 'package:flutter_weather_app_sample/domain/usecases/get_current_weather.dart';
// import 'package:flutter_weather_app_sample/presentation/bloc/weather_bloc.dart';
// import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:valorant_app/data/datasource/remote_data_source.dart';
import 'package:valorant_app/data/datasource/valorant_agents_api.dart';
import 'package:valorant_app/data/datasource/valorant_buddies_api.dart';
import 'package:valorant_app/data/datasource/valorant_bunddle_api.dart';
import 'package:valorant_app/data/datasource/valorant_ceremony_api.dart';
import 'package:valorant_app/data/datasource/valorant_competetive_tiers_api.dart';
import 'package:valorant_app/data/datasource/valorant_content_tiers_api.dart';
import 'package:valorant_app/data/datasource/valorant_contracts_api.dart';
import 'package:valorant_app/data/datasource/valorant_map_api.dart';
import 'package:valorant_app/data/repositories/valorant_buddie_repository_impl.dart';
import 'package:valorant_app/data/repositories/valorant_bunddle_repository_impl.dart';
import 'package:valorant_app/data/repositories/valorant_ceremony_repository_impl.dart';
import 'package:valorant_app/data/repositories/valorant_competetive_tiers_repository_impl.dart';
import 'package:valorant_app/data/repositories/valorant_content_tiers_repository_impl.dart';
import 'package:valorant_app/data/repositories/valorant_contracts_repository_impl.dart';
import 'package:valorant_app/data/repositories/valorant_map_repository_impl.dart';
import 'package:valorant_app/data/repositories/valorant_repositories_impl.dart';
import 'package:valorant_app/domain/repositories/valorant_buddies_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_bunddle_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_ceremony_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_characters_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_competetive_tiers_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_content_tiers_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_contracts_repositories.dart';
import 'package:valorant_app/domain/repositories/valorant_map_repositories.dart';
import 'package:valorant_app/domain/usecases/get_buddies.dart';
import 'package:valorant_app/domain/usecases/get_bunddles.dart';
import 'package:valorant_app/domain/usecases/get_ceremony.dart';
import 'package:valorant_app/domain/usecases/get_competetive_tiers.dart';
import 'package:valorant_app/domain/usecases/get_content_tiers.dart';
import 'package:valorant_app/domain/usecases/get_contracts.dart';
import 'package:valorant_app/domain/usecases/get_maps.dart';
import 'package:valorant_app/domain/usecases/get_valorant_characters.dart';
import 'package:valorant_app/presentation/bloc/valorant_agents_bloc/valorant_agents_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_buddies_bloc/valorant_buddies_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_bunddles_bloc/valorant_bunddle_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_ceremony_bloc/valorant_ceremony_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_competetive_tiers_bloc/valorant_competetive_tiers_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_content_tiers_bloc/valorant_content_tiers_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_contracts_bloc/valorant_contracts_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_maps_bloc/valorant_maps_bloc.dart';

final locator = GetIt.instance;

void init() {
  print('injector initializing');
  // bloc
  // locator.registerFactory(() => ValorantBloc(
  //       locator(),
  //       locator(),
  //       locator(),
  //       locator(),
  //     ));
  locator.registerFactory(() => ValorantAgentsBloc(locator()));
  locator.registerFactory(() => ValorantBunddleBloc(locator()));
  locator.registerFactory(() => ValorantBuddiesBloc(locator()));
  locator.registerFactory(() => ValorantCeremonyBloc(locator()));
  locator.registerFactory(() => ValorantCompetetiveTiersBloc(locator()));
  locator.registerFactory(() => ValorantContentTiersBloc(locator()));
  locator.registerFactory(() => ValorantContractsBloc(locator()));
  locator.registerFactory(() => ValorantMapsBloc(locator()));

  // usecase
  locator.registerLazySingleton(() => GetValorantCharacters(locator()));
  locator.registerLazySingleton(() => GetValorantBuddies(locator()));
  locator.registerLazySingleton(() => GetValorantBunddles(locator()));
  locator.registerLazySingleton(() => GetValorantCeremonies(locator()));
  locator.registerLazySingleton(() => GetValorantCompetetiveTiers(locator()));
  locator.registerLazySingleton(() => GetValorantContentTiers(locator()));
  locator.registerLazySingleton(() => GetValorantContracts(locator()));
  locator.registerLazySingleton(() => GetValorantMaps(locator()));

  // repository
  locator.registerLazySingleton<ValorantCharactersRepository>(
    () => ValorantRepositoryImpl(
      valorantAgentsApi: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantBuddiesRepository>(
    () => ValorantBuddieRepositoryImpl(
      valorantBuddiesApi: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantBunddleRepository>(
    () => ValorantBunddleRepositoryImpl(
      valorantBunddleApi: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantCeremonyRepository>(
    () => ValorantCeremonyRepositoryImpl(
      valorantCeremonyApi: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantCompetetiveTiersRepository>(
    () => ValorantCompetetiveTiersRepositoryImpl(
      valorantCompetetiveTiersApi: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantContentTiersRepository>(
    () => ValorantContentTiersRepositoryImpl(
      valorantContentTiersApi: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantContractsRepository>(
    () => ValorantContractsRepositoryImpl(
      valorantContentTiersApi: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantMapRepository>(
    () => ValorantMapRepositoryImpl(
      valorantMapApi: locator(),
    ),
  );

  // data source
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantAgentsApi>(
    () => ValorantAgentsApiImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantBunddleApi>(
    () => ValorantBunddleApiImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantBuddiesApi>(
    () => ValorantBuddiesApiImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantCeremonyApi>(
    () => ValorantCeremonyApiImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantCompetetiveTiersApi>(
    () => ValorantCompetetiveTiersApiImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantContentTiersApi>(
    () => ValorantContentTiersApiImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantContractsApi>(
    () => ValorantContractsApiImpl(
      dio: locator(),
    ),
  );
  locator.registerLazySingleton<ValorantMapApi>(
    () => ValorantMapApiImpl(
      dio: locator(),
    ),
  );

  // external
  locator.registerLazySingleton(() => Dio());
}
