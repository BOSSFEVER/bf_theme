import 'package:bf_theme/bf_theme.dart';
import 'package:flutter/material.dart';

class BFButton extends StatefulWidget {
  const BFButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.colorPack = BFColorPacks.indigo,
    this.leading,
    this.trailing,
    this.height,
    this.width,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  final Widget child;
  final void Function()? onPressed;
  final BFColorPack colorPack;
  final IconData? leading;
  final IconData? trailing;
  final double? width;
  final double? height;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<BFButton> createState() => _BFButtonState();
}

class _BFButtonState extends State<BFButton> {
  bool hovering = false;
  bool clicking = false;

  @override
  Widget build(BuildContext context) {
    final bool activated = widget.onPressed != null;

    return MouseRegion(
      onEnter: (_) => setState(() => hovering = true),
      onExit: (_) => setState(() {
        hovering = false;
        clicking = false;
      }),
      cursor: activated ? SystemMouseCursors.click : MouseCursor.defer,
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: (_) => setState(() => clicking = true),
        onTapUp: (_) => setState(() => clicking = false),
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: activated
                ? clicking
                    ? widget.colorPack.click
                    : hovering
                        ? widget.colorPack.hover
                        : widget.colorPack.background
                : BFColors.disabled,
          ),
          child: Padding(
            padding:
                widget.leading != null ? const EdgeInsets.fromLTRB(13, 8, 16, 8) : const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: widget.mainAxisSize,
              mainAxisAlignment: widget.mainAxisAlignment,
              children: [
                if (widget.leading != null) Icon(widget.leading, size: 21, color: activated ? Colors.white : Colors.grey.shade600),
                if (widget.leading != null) const SizedBox(width: 8),
                DefaultTextStyle.merge(style: TextStyle(color: activated ? Colors.white : Colors.grey.shade600), child: widget.child),
                if (widget.trailing != null) const SizedBox(width: 8),
                if (widget.trailing != null) Icon(widget.trailing, size: 21, color: activated ? Colors.white : Colors.grey.shade600),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
