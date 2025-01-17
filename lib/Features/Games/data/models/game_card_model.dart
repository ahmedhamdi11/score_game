import 'package:equatable/equatable.dart';
import 'package:score_game/Core/utils/enums.dart';

class GameCardModel extends Equatable {
  final String title;
  final String? subTitle;
  final String backgroundImage;
  final String gameImage;
  final GameType gameType;

  const GameCardModel({
    required this.title,
    this.subTitle,
    required this.backgroundImage,
    required this.gameImage,
    required this.gameType,
  });

  @override
  List<Object?> get props => [
        title,
        subTitle,
        backgroundImage,
        gameImage,
        gameType,
      ];
}
