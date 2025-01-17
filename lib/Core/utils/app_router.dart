import 'package:flutter/material.dart';
import 'package:score_game/Features/Games/presentation/view/trix_history.dart';
import 'package:score_game/Features/Games/presentation/view/games_view.dart';
import 'package:score_game/Features/trix_game/presentation/views/trix_players_view.dart';

abstract class AppRouter {
  /// routes names
  static const trixHistoryView = '/trixHistoryView';
  static const trixPlayersView = '/trixPlayersView';

  /// This function is responsible for generating routes based on the route settings.
  static Route? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // The initial route
      case '/':
        return MaterialPageRoute(builder: (_) => const GamesView());

      // game history view route
      case trixHistoryView:
        return MaterialPageRoute(builder: (_) => const TrixHistoryView());

      // game history view route
      case trixPlayersView:
        return MaterialPageRoute(builder: (_) => const TrixPlayersView());

      default:
        // TODO: If the route is not found, return the 404 screen.
        return null;
    }
  }
}
