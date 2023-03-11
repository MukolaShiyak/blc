// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:valorant_app/domain/usecases/get_buddies.dart';
// import 'package:valorant_app/domain/usecases/get_bunddles.dart';
// import 'package:valorant_app/domain/usecases/get_ceremony.dart';
// import 'package:valorant_app/domain/usecases/get_valorant_characters.dart';
// import 'package:valorant_app/presentation/bloc/valorant_event.dart';
// import 'package:valorant_app/presentation/bloc/valorant_state.dart';

// class ValorantBloc extends Bloc<ValorantEvent, ValorantState> {
//   final GetValorantCharacters _getValorantCharacters;
//   final GetValorantBuddies _getValorantBuddies;
//   final GetValorantBunddles _getValorantBunddles;
//   final GetValorantCeremonies _getValorantCeremonies;

//   ValorantBloc(
//     this._getValorantCharacters,
//     this._getValorantBuddies,
//     this._getValorantBunddles,
//     this._getValorantCeremonies,
//   ) : super(ValorantEmpty()) {
//     on<OnValorantCardChanged>(
//       (event, emit) async {
//         final cityName = event.cityName;

//         emit(ValorantLoading());

//         final result = await _getValorantCharacters.execute();
//         result.fold(
//           (failure) {
//             emit(ValorantError(failure.message));
//           },
//           (data) {
//             emit(ValorantHasData(data));
//           },
//         );
//       },
//       transformer: debounce(Duration(milliseconds: 500)),
//     );
//   }

//   Future<void> getAgents() async {
//     final result = await _getValorantCharacters.execute();

//     result.fold(
//       (failure) {
//         emit(ValorantError(failure.message));
//       },
//       (data) {
//         emit(ValorantHasData(data));
//       },
//     );
//   }

//   Future<void> getBuddies() async {
//     final result = await _getValorantBuddies.executeBuddie();

//     result.fold(
//       (failure) {
//         emit(ValorantError(failure.message));
//       },
//       (data) {
//         emit(ValorantHasBuddiesData(data));
//       },
//     );
//   }

//   Future<void> getBunddles() async {
//     final result = await _getValorantBunddles.executeBunddle();

//     result.fold(
//       (failure) {
//         emit(ValorantError(failure.message));
//       },
//       (data) {
//         emit(ValorantHasBunddleData(data));
//       },
//     );
//   }

//   Future<void> getCeremonies() async {
//     final result = await _getValorantCeremonies.executeCeremonies();

//     result.fold(
//       (failure) {
//         emit(ValorantError(failure.message));
//       },
//       (data) {
//         emit(ValorantHasCeremonyData(data));
//       },
//     );
//   }

//   EventTransformer<T> debounce<T>(Duration duration) {
//     return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
//   }
// }
