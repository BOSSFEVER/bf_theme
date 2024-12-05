import 'package:bf_theme/src/theme/other/bf_card_theme.dart';
import 'package:flutter/material.dart';

import 'bf_color.dart';
import 'other/bf_app_bar_theme.dart';

class BFTheme {
  const BFTheme._noConstructor();

  static ThemeData createDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.blue,
      canvasColor: BFColors.background,
      scaffoldBackgroundColor: BFColors.background,
      textTheme: ThemeData.dark().textTheme,
      cardTheme: bfCardTheme,
      appBarTheme: bfAppBarTheme,
    );
  }
}
