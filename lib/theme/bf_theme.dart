import 'package:bf_theme/theme/bf_outlined_button_style.dart';
import 'package:flutter/material.dart';

import 'bf_color.dart';
import 'bf_filled_button_style.dart';

class BFTheme {
  const BFTheme._noConstructor();

  static ThemeData createDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.blue,
      canvasColor: Colors.red,
      cardColor: const Color(0xFF232323),
      scaffoldBackgroundColor: const Color(0xFF121212),
      textTheme: ThemeData.dark().textTheme,
      cardTheme: const CardTheme(
        color: Color(0xFF232323),
      ),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: createFilledButtonStyle()),
      filledButtonTheme:
          FilledButtonThemeData(style: createFilledButtonStyle()),
      outlinedButtonTheme:
          OutlinedButtonThemeData(style: createOutlinedButtonStyle()),
      checkboxTheme: CheckboxThemeData(
        visualDensity: const VisualDensity(horizontal: 1, vertical: 1),
        materialTapTargetSize: MaterialTapTargetSize.padded,
        checkColor: const WidgetStatePropertyAll(Colors.black),
        side: const BorderSide(
          strokeAlign: BorderSide.strokeAlignInside,
          color: Colors.transparent,
        ),
        splashRadius: 0,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        fillColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.disabled)) {
            return Colors.grey.shade900;
          }
          if (state.contains(WidgetState.selected)) {
            return Colors.lightGreenAccent.shade400;
          }
          return Colors.redAccent.shade400;
        }),
      ),
    );
  }

  static ButtonStyle createFilledButtonStyle(
      {BFColorPack colorPack = BFColorPack.indigo}) {
    return createBFFilledButtonStyle(colorPack: colorPack);
  }

  static ButtonStyle createOutlinedButtonStyle(
      {BFColorPack colorPack = BFColorPack.indigo}) {
    return createBFOutlinedButtonStyle(colorPack: colorPack);
  }
}
