import 'package:flutter/material.dart';

import '../theme/bf_color.dart';
import '../theme/bf_theme.dart';

class BFOutlinedButton extends StatelessWidget {
  const BFOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior,
    this.statesController,
    this.icon,
    this.colorPack,
    this.width,
    this.height,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip? clipBehavior;
  final WidgetStatesController? statesController;
  final Widget child;
  final IconData? icon;
  final BFColorPack? colorPack;

  final double? width;
  final double? height;

  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = BFTheme.createOutlinedButtonStyle(colorPack: colorPack ?? BFColorPack.indigo);

    if (icon != null) {
      buttonStyle = buttonStyle.copyWith(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.fromLTRB(13, 16, 16, 16),
        ),
      );
    }

    return OutlinedButton(
      style: buttonStyle,
      onPressed: onPressed,
      onHover: onHover,
      onFocusChange: onFocusChange,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: SizedBox(
        height: height,
        width: width,
        child: Row(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (icon != null) Icon(icon, size: 21),
            if (icon != null) const SizedBox(width: 8),
            child,
          ],
        ),
      ),
    );
  }
}
