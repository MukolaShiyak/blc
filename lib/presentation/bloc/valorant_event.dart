import 'package:equatable/equatable.dart';

abstract class ValorantEvent extends Equatable {
  const ValorantEvent();

  @override
  List<Object?> get props => [];
}

class OnValorantCardChanged extends ValorantEvent {
  final String cityName;

  OnValorantCardChanged(this.cityName);

  @override
  List<Object?> get props => [cityName];
}
