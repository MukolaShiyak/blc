import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_contracts.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantContractsBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantContracts _getValorantContracts;

  ValorantContractsBloc(
    this._getValorantContracts,
  ) : super(ValorantEmpty());

  Future<void> getContracts() async {
    final result = await _getValorantContracts.executeContracts();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasContractsData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
