import 'package:bf_theme/theme/buttons/bf_general_button_style.dart';
import 'package:flutter/material.dart';

import '../bf_color.dart';

ButtonStyle createBFOutlinedButtonStyle({BFColorPack colorPack = BFColorPack.indigo}) {
  return createBFGeneralButtonStyle().copyWith(
    backgroundBuilder: (context, state, widget) {
      Color color = colorPack.background;
      double opacity = 0.08;
      if (state.contains(WidgetState.hovered)) {
        color = colorPack.hover;
        opacity = 0.2;
      }
      if (state.contains(WidgetState.pressed)) {
        color = colorPack.click;
        opacity = 0.3;
      }
      if (state.contains(WidgetState.disabled)) {
        color = BFExtraColors.disabled;
        opacity = 0.2;
      }
      return AnimatedContainer(
        decoration: BoxDecoration(
            color: color.withOpacity(opacity),
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(
              color: color,
              width: 2,
              strokeAlign: BorderSide.strokeAlignInside,
            )),
        duration: const Duration(milliseconds: 75),
        child: widget,
      );
    },
    foregroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.disabled)) {
        return Colors.grey;
      }
      return Colors.white;
    }),
  );
}
