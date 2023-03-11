import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_buddies.dart';
import 'package:valorant_app/domain/usecases/get_bunddles.dart';
import 'package:valorant_app/domain/usecases/get_ceremony.dart';
import 'package:valorant_app/domain/usecases/get_valorant_characters.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantBuddiesBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantBuddies _getValorantBuddies;

  ValorantBuddiesBloc(
    this._getValorantBuddies,
  ) : super(ValorantEmpty());

  Future<void> getBuddies() async {
    final result = await _getValorantBuddies.executeBuddie();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasBuddiesData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
