import 'package:flutter/material.dart';

import 'bf_color.dart';

ButtonStyle createBFOutlinedButtonStyle(
    {BFColorPack colorPack = BFColorPack.indigo}) {
  return ButtonStyle(
    animationDuration: const Duration(milliseconds: 75),
    splashFactory: NoSplash.splashFactory,
    backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
    padding: const WidgetStatePropertyAll(
      EdgeInsets.all(16),
    ),
    shape: const WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
    ),
    overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    shadowColor: const WidgetStatePropertyAll(Colors.transparent),
    backgroundBuilder: (context, state, widget) {
      Color color = colorPack.background;
      if (state.contains(WidgetState.hovered)) {
        color = colorPack.hover;
      }
      if (state.contains(WidgetState.pressed)) {
        color = colorPack.click;
      }
      if (state.contains(WidgetState.disabled)) {
        color = BFExtraColors.disabled;
      }
      return AnimatedContainer(
        decoration: BoxDecoration(
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
