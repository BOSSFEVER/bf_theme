import 'package:bf_theme/bf_theme.dart';
import 'package:bf_theme/example/colorpack_helper.dart';
import 'package:bf_theme/widgets/bf_outlined_button.dart';
import 'package:bf_theme/widgets/bf_text_button.dart';
import 'package:flutter/material.dart';

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
                  BFFilledButton(
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
                  BFFilledButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    icon: data.icon,
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
                  BFOutlinedButton(
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
                  BFOutlinedButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    icon: data.icon,
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
                  BFTextButton(
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
                  BFTextButton(
                    onPressed: data.function,
                    colorPack: data.colorPack,
                    icon: data.icon,
                    child: Text(data.name),
                  ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Combo of all 3 Button Types',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                BFTextButton(
                  onPressed: () {},
                  colorPack: BFColorPack.cyan,
                  child: Text('One'),
                ),
                BFOutlinedButton(
                  onPressed: () {},
                  colorPack: BFColorPack.cyan,
                  child: Text('Two'),
                ),
                BFFilledButton(
                  onPressed: () {},
                  colorPack: BFColorPack.cyan,
                  child: Text('Three'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
