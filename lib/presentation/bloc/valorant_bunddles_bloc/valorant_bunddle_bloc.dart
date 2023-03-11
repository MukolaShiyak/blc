import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_bunddles.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantBunddleBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantBunddles _getValorantBunddles;

  ValorantBunddleBloc(
    this._getValorantBunddles,
  ) : super(ValorantEmpty());

  Future<void> getBunddles() async {
    final result = await _getValorantBunddles.executeBunddle();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasBunddleData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
