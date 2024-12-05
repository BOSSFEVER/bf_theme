import 'package:bf_theme/src/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class BFToggleButton extends StatefulWidget {
  const BFToggleButton({required this.text, super.key});

  final String text;

  @override
  State<BFToggleButton> createState() => _BFToggleButtonState();
}

class _BFToggleButtonState extends State<BFToggleButton> {
  bool activated = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => setState(() {
        activated = !activated;
      }),
      style: context.theme.elevatedButtonTheme.style!.copyWith(
        backgroundBuilder: (context, state, widget) {
          Color color = Colors.pink.shade900;
          if (state.contains(WidgetState.hovered)) {
            color = Colors.pink.shade800;
          }
          if (state.contains(WidgetState.pressed)) {
            color = Colors.pink.shade600;
          }
          if (!activated) {
            color = Colors.grey.shade800;
          }
          if (!activated && state.contains(WidgetState.hovered)) {
            color = Colors.grey.shade700;
          }
          if (!activated && state.contains(WidgetState.pressed)) {
            color = Colors.grey.shade600;
          }
          return AnimatedContainer(color: color, duration: const Duration(milliseconds: 75), child: widget);
        },
        foregroundColor: WidgetStateProperty.resolveWith((state) {
          if (!activated) {
            return Colors.grey.shade300;
          }
          return Colors.white;
        }),
        foregroundBuilder: (context, state, widget) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(activated ? Icons.file_copy : Icons.file_copy_outlined, size: 21),
              const SizedBox(width: 8),
              widget!,
            ],
          );
        },
      ),
      child: Text(widget.text),
    );
  }
}
