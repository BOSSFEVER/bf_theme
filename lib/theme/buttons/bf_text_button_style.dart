import 'package:flutter/material.dart';

import '../bf_color.dart';
import 'bf_general_button_style.dart';

ButtonStyle createBFTextButtonStyle(
    {BFColorPack colorPack = BFColorPack.indigo}) {
  return createBFGeneralButtonStyle().copyWith(
    backgroundBuilder: (context, state, widget) {
      Color color = colorPack.background;
      double opacity = 0;
      if (state.contains(WidgetState.hovered)) {
        color = colorPack.hover;
        opacity = 0.15;
      }
      if (state.contains(WidgetState.pressed)) {
        color = colorPack.click;
        opacity = 0.2;
      }
      if (state.contains(WidgetState.disabled)) {
        color = BFExtraColors.disabled;
        opacity = 0;
      }
      return AnimatedContainer(
        color: color.withOpacity(opacity),
        duration: const Duration(milliseconds: 75),
        child: widget,
      );
    },
    foregroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.hovered)) {
        return colorPack.hover;
      }
      if (state.contains(WidgetState.pressed)) {
        return colorPack.click;
      }
      if (state.contains(WidgetState.disabled)) {
        return BFExtraColors.disabled;
      }
      return colorPack.hover;
    }),
  );
}