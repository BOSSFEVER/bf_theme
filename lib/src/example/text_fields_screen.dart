import 'package:bf_theme/bf_theme.dart';
import 'package:bf_theme/src/widgets/bf_text_field.dart';
import 'package:flutter/material.dart';

class TextFieldsScreen extends StatelessWidget {
  const TextFieldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1500,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BF Text Fields on Background',
                style: context.theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8),
              BFTextField(
                colorPack: BFColorPacks.yellow,
                fillColor: BFColors.widgetBackground,
                maxLines: 1,
              ),
              SizedBox(height: 8),
              BFTextField(
                colorPack: BFColorPacks.red,
                fillColor: BFColors.widgetBackground,
                maxLines: 1,
              ),
              SizedBox(height: 8),
              BFTextField(
                colorPack: BFColorPacks.cyan,
                fillColor: BFColors.widgetBackground,
                maxLines: 1,
              ),
              SizedBox(height: 8),
              BFTextField(
                colorPack: BFColorPacks.lime,
                fillColor: BFColors.widgetBackground,
                maxLines: 1,
              ),
              SizedBox(height: 32),
              Text(
                'BF Text Fields on Widget',
                style: context.theme.textTheme.titleMedium,
              ),
              Card(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 8),
                        BFTextField(
                          colorPack: BFColorPacks.orange,
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        BFTextField(
                          colorPack: BFColorPacks.blue,
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        BFTextField(
                          colorPack: BFColorPacks.brown,
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        BFTextField(
                          colorPack: BFColorPacks.steel,
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        BFTextField(
                          colorPack: BFColorPacks.gray,
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        BFTextField(
                          colorPack: BFColorPacks.ash,
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        BFTextField(
                          colorPack: BFColorPacks.berry,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
