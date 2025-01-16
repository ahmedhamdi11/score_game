import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:score_game/Core/utils/app_router.dart';
import 'package:score_game/Core/theme/app_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      title: 'قيد وسكور',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
