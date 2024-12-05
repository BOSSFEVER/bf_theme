import 'package:flutter/material.dart';

ButtonStyle createBFGeneralButtonStyle() {
  return const ButtonStyle(
    animationDuration: Duration(milliseconds: 75),
    splashFactory: NoSplash.splashFactory,
    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
    overlayColor: WidgetStatePropertyAll(Colors.transparent),
    shadowColor: WidgetStatePropertyAll(Colors.transparent),
    padding: WidgetStatePropertyAll(
      EdgeInsets.all(16),
    ),
    side: WidgetStatePropertyAll(BorderSide.none),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  );
}
