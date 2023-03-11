import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_ceremony.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantCeremonyBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantCeremonies _getValorantCeremonies;

  ValorantCeremonyBloc(
    this._getValorantCeremonies,
  ) : super(ValorantEmpty());

  Future<void> getCeremonies() async {
    final result = await _getValorantCeremonies.executeCeremonies();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasCeremonyData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
