import 'package:flutter/material.dart';

import 'bf_button_style.dart';
import 'bf_color.dart';

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
      elevatedButtonTheme: ElevatedButtonThemeData(style: createButtonStyle()),
      // filledButtonTheme: FilledButtonThemeData(style: BFButtonStyle()),
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

  static ButtonStyle createButtonStyle(
      {BFColorPack colorPack = BFColorPack.indigo}) {
    return createBFButtonStyle(colorPack: colorPack);
  }
}
