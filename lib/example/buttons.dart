import 'package:bf_theme/bf_theme.dart';
import 'package:bf_theme/example/colorpack_helper.dart';
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
                  BFButton(
                    onPressed: () {},
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
                BFButton(
                  onPressed: () {},
                  colorPack: BFColorPack.green,
                  icon: Icons.check,
                  child: const Text('Accept'),
                ),
                BFButton(
                  onPressed: () {},
                  colorPack: BFColorPack.red,
                  icon: Icons.close,
                  child: const Text('Cancel'),
                ),
                BFButton(
                  onPressed: () {},
                  colorPack: BFColorPack.blue,
                  icon: Icons.add,
                  child: const Text('Add User'),
                ),
                BFButton(
                  onPressed: () {},
                  colorPack: BFColorPack.orange,
                  icon: Icons.cached,
                  child: const Text('Refresh'),
                ),
                BFButton(
                  onPressed: () {},
                  colorPack: BFColorPack.berry,
                  icon: Icons.favorite_border,
                  child: const Text('Favorite'),
                ),
                BFButton(
                  onPressed: () {},
                  colorPack: BFColorPack.purple,
                  icon: Icons.notifications_active_outlined,
                  child: const Text('Subscribe'),
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
                    onPressed: () {},
                    colorPack: data.colorPack,
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
