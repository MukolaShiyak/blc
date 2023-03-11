import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:valorant_app/domain/usecases/get_content_tiers.dart';
import 'package:valorant_app/presentation/bloc/valorant_event.dart';
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class ValorantContentTiersBloc extends Bloc<ValorantEvent, ValorantState> {
  final GetValorantContentTiers _getValorantContentTiers;

  ValorantContentTiersBloc(
    this._getValorantContentTiers,
  ) : super(ValorantEmpty());

  Future<void> getContentTiers() async {
    final result = await _getValorantContentTiers.executeContentTiers();

    result.fold(
      (failure) {
        emit(ValorantError(failure.message));
      },
      (data) {
        emit(ValorantHasContentTiersData(data));
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
