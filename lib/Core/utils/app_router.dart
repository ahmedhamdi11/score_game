import 'package:flutter/material.dart';
import 'package:score_game/Features/Games/presentation/view/trix_history.dart';
import 'package:score_game/Features/Games/presentation/view/games_view.dart';

abstract class AppRouter {
  /// routes names
  static const trixHistoryView = '/trixHistoryView';

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

      default:
        // TODO: If the route is not found, return the 404 screen.
        return null;
    }
  }
}
