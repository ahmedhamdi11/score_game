import 'package:flutter/material.dart';
import 'package:score_game/Features/Games/presentation/view/games_view.dart';

abstract class AppRouter {
  /// This function is responsible for generating routes based on the route settings.
  static Route? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        // The initial route
        return MaterialPageRoute(builder: (_) => const GamesView());

      default:
        // TODO: If the route is not found, return the 404 screen.
        return null;
    }
  }
}
