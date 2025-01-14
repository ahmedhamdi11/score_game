import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:score_game/generated/codegen_loader.g.dart';
import 'package:score_game/my_app.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      runApp(
        EasyLocalization(
          supportedLocales: const [
            Locale('ar'),
          ],
          path: 'assets/translations',
          fallbackLocale: const Locale('ar'),
          assetLoader: const CodegenLoader(),
          child: const MyApp(),
        ),
      );
    },
    (error, stack) {
      log(error.toString(), stackTrace: stack);
    },
  );
}
