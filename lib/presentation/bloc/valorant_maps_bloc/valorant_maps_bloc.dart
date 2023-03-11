import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_maps.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantMapsBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantMaps _getValorantMaps;

  ValorantMapsBloc(
    this._getValorantMaps,
  ) : super(ValorantEmpty());

  Future<void> getMaps() async {
    final result = await _getValorantMaps.executeMaps();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasMapsData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
