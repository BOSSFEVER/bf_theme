import 'package:flutter/material.dart';

import '../bf_color.dart';
import 'bf_general_button_style.dart';

ButtonStyle createBFFilledButtonStyle({BFColorPack colorPack = BFColorPacks.indigo}) {
  return createBFGeneralButtonStyle().copyWith(
    backgroundBuilder: (context, state, widget) {
      Color color = colorPack.background;
      if (state.contains(WidgetState.hovered)) {
        color = colorPack.hover;
      }
      if (state.contains(WidgetState.pressed)) {
        color = colorPack.click;
      }
      if (state.contains(WidgetState.disabled)) {
        color = BFColors.disabled;
      }
      return AnimatedContainer(
        padding: EdgeInsets.all(2),
        color: color,
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
