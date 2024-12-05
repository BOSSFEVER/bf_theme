import 'package:bf_theme/bf_theme.dart';
import 'package:bf_theme/src/example/colorpack_helper.dart';
import 'package:flutter/material.dart';

import '../widgets/bf_button.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BF Filled Buttons',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (ColorData data in colorDataList)
                  BFButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    child: Text(data.name),
                  ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'BF Filled Button with Icon',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (IconColorData data in iconColorDataList)
                  BFButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    leading: data.icon,
                    child: Text(data.name),
                  ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'BF Outlined Button',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (ColorData data in colorDataList)
                  BFButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    child: Text(data.name),
                  ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'BF Outlined Button with Icon',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (IconColorData data in iconColorDataList)
                  BFButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    leading: data.icon,
                    child: Text(data.name),
                  ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'BF Text Button',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (ColorData data in colorDataList)
                  BFButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    child: Text(data.name),
                  ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'BF Filled Button with Icon',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (IconColorData data in iconColorDataList)
                  BFButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    leading: data.icon,
                    child: Text(data.name),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
