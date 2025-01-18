import 'package:score_game/Core/utils/enums.dart';

class TrixState {
  GamePlayersType selectedType;

  TrixState({
    this.selectedType = GamePlayersType.individual,
  });

  TrixState copyWith({GamePlayersType? selectedType}) => TrixState(
        selectedType: selectedType ?? this.selectedType,
      );
}
