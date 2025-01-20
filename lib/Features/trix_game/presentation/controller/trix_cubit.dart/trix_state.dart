import 'package:score_game/Core/utils/enums.dart';

class TrixState {
  GamePlayersType playersType;
  TrixGameType trixGameType;

  TrixState({
    this.playersType = GamePlayersType.individual,
    this.trixGameType = TrixGameType.trix,
  });

  TrixState copyWith({
    GamePlayersType? selectedType,
    TrixGameType? trixGameType,
  }) =>
      TrixState(
        playersType: selectedType ?? this.playersType,
        trixGameType: trixGameType ?? this.trixGameType,
      );
}
