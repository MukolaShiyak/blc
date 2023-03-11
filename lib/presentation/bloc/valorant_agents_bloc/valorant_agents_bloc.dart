import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_valorant_characters.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantAgentsBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantCharacters _getValorantCharacters;

  ValorantAgentsBloc(
    this._getValorantCharacters,
  ) : super(ValorantEmpty());

  Future<void> getAgents() async {
    final result = await _getValorantCharacters.execute();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
