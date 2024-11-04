import 'dart:io';

import 'package:bf_theme/theme/bf_theme.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    WindowManager.instance.setTitle('BF Theme Demo');
    WindowManager.instance.setMinimumSize(const Size(800, 500));
  }
  runApp(const BFThemeApp());
}

class BFThemeApp extends StatelessWidget {
  const BFThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: BFTheme.createDarkTheme(),
      home: const App(),
    );
  }
}
