import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:score_game/my_app.dart';

void main() {
  runZonedGuarded(
    () {
      runApp(const MyApp());
    },
    (error, stack) {
      log(error.toString(), stackTrace: stack);
    },
  );
}
