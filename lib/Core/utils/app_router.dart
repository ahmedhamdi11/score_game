import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_game/Features/Games/presentation/view/trix_history.dart';
import 'package:score_game/Features/Games/presentation/view/games_view.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_cubit.dart';
import 'package:score_game/Features/trix_game/presentation/views/trix_game_choose_view.dart';
import 'package:score_game/Features/trix_game/presentation/views/trix_players_view.dart';

abstract class AppRouter {
  /// routes names
  static const trixHistoryView = '/trixHistoryView';
  static const trixPlayersView = '/trixPlayersView';
  static const trixGameChooseView = '/trixGameChooseView';

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

      // trix Players View route
      case trixPlayersView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => TrixCubit(),
            child: const TrixPlayersView(),
          ),
        );

      // trix game choose view route
      case trixGameChooseView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: args as TrixCubit,
            child: const TrixGameChooseView(),
          ),
        );

      default:
        // TODO: If the route is not found, return the 404 screen.
        return null;
    }
  }
}
