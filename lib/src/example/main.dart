import 'package:flutter/material.dart';

import '../../bf_theme.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
