import 'package:flutter/material.dart';

import '../theme/bf_color.dart';
import '../theme/config.dart';

class BfTextField extends StatelessWidget {
  const BfTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.colorPack = Config.defaultColorPack,
    this.cursorWidth = 2,
    this.focusColor,
    this.minLines,
    this.maxLines,
    this.fillColor = BFColors.background,
  });

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final BFColorPack colorPack;
  final double cursorWidth;
  final Color? focusColor;
  final int? minLines;
  final int? maxLines;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return DefaultSelectionStyle(
      selectionColor: colorPack.background.withOpacity(0.6),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: colorPack.background,
        cursorWidth: cursorWidth,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          focusColor: focusColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
              style: BorderStyle.solid,
              color: colorPack.background,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
              style: BorderStyle.solid,
              color: Colors.transparent,
            ),
          ),
        ),
        minLines: minLines,
        maxLines: maxLines,
      ),
    );
  }
}
