import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_ceremony.dart';
import 'package:valorant_app/domain/usecases/get_competetive_tiers.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantCompetetiveTiersBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantCompetetiveTiers _getValorantCompetetiveTiers;

  ValorantCompetetiveTiersBloc(
    this._getValorantCompetetiveTiers,
  ) : super(ValorantEmpty());

  Future<void> getCompetetiveTiers() async {
    final result = await _getValorantCompetetiveTiers.executeCompetetiveTiers();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasCompetetiveTiersData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
