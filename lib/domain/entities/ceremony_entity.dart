import 'package:equatable/equatable.dart';

class Ceremony extends Equatable {
  const Ceremony({
    required this.uuid,
    required this.displayName,
    required this.assetPath,
  });

  final String uuid;
  final String displayName;
  final String assetPath;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        assetPath,
      ];
}
