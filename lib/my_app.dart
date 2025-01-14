import 'package:flutter/material.dart';
import 'package:score_game/Core/utils/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      title: 'قيد وسكور',
    );
  }
}
