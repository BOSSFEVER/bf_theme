import 'package:bf_theme/src/theme/config.dart';
import 'package:bf_theme/src/theme/other/bf_card_theme.dart';
import 'package:bf_theme/src/theme/other/bf_text_selection_theme.dart';
import 'package:flutter/material.dart';

import 'bf_color.dart';
import 'other/bf_app_bar_theme.dart';

abstract final class BFTheme {
  static ThemeData createDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.blue,
      canvasColor: BFColors.background,
      scaffoldBackgroundColor: BFColors.background,
      textTheme: ThemeData.dark().textTheme.apply(fontFamily: Config.defaultFontName),
      fontFamily: 'Ubuntu',
      cardTheme: bfCardTheme,
      appBarTheme: bfAppBarTheme,
      textSelectionTheme: bfTextSelectionTheme,
    );
  }
}
