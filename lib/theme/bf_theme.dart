import 'package:bf_theme/theme/buttons/bf_outlined_button_style.dart';
import 'package:bf_theme/theme/buttons/bf_text_button_style.dart';
import 'package:bf_theme/theme/other/bf_card_theme.dart';
import 'package:flutter/material.dart';

import 'bf_color.dart';
import 'buttons/bf_filled_button_style.dart';
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
      elevatedButtonTheme: ElevatedButtonThemeData(style: createFilledButtonStyle()),
      filledButtonTheme: FilledButtonThemeData(style: createFilledButtonStyle()),
      outlinedButtonTheme: OutlinedButtonThemeData(style: createOutlinedButtonStyle()),
      textButtonTheme: TextButtonThemeData(style: createTextButtonStyle()),
    );
  }

  static ButtonStyle createFilledButtonStyle({BFColorPack colorPack = BFColorPacks.indigo}) {
    return createBFFilledButtonStyle(colorPack: colorPack);
  }

  static ButtonStyle createOutlinedButtonStyle({BFColorPack colorPack = BFColorPacks.indigo}) {
    return createBFOutlinedButtonStyle(colorPack: colorPack);
  }

  static ButtonStyle createTextButtonStyle({BFColorPack colorPack = BFColorPacks.indigo}) {
    return createBFTextButtonStyle(colorPack: colorPack);
  }
}
