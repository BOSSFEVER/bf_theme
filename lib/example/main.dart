import 'dart:async';
import 'dart:io';

import 'package:bf_theme/theme/bf_color.dart';
import 'package:bf_theme/theme/bf_theme.dart';
import 'package:bf_theme/widgets/bf_button.dart';
import 'package:bf_theme/widgets/bf_toggle_button.dart';
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

class ValueThing<T> {
  final StreamController<T> controller = StreamController<T>();
  T _value;

  ValueThing(T initialValue) : _value = initialValue {
    controller.add(_value);
  }

  void add(T value) {
    _value = value;
    update();
  }

  void update() {
    controller.add(_value);
  }

  T getValue() {
    return _value;
  }

  Stream<T> getStream() {
    return controller.stream;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checked = false;
  ValueThing<bool> vt = ValueThing(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BF Theme'),
      ),
      drawer: NavigationDrawer(
        selectedIndex: 0,
        children: [
          NavigationDrawerDestination(
            icon: Icon(Icons.ads_click),
            label: const Text('Buttons'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.person),
            label: const Text('The Rest'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.water_drop),
            label: const Text('Even More'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 16),
              StreamBuilder(
                stream: vt.getStream(),
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) =>
                    BFButton(
                  onPressed: snapshot.data ?? true ? () {} : null,
                  child: const Text("Download"),
                ),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {},
                child: const Text("OutlinedButton"),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () async => vt.add(!vt.getValue()),
                child: const Text("FilledButton (activate)"),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text("TextButton"),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                      value: checked,
                      onChanged: (x) => setState(() {
                        checked = x!;
                      }),
                    ),
                  ),
                  Text(
                    "Unchanged coolness",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const BFToggleButton(text: "Activate File"),
              const SizedBox(height: 16),
              const BFButton(
                onPressed: null,
                icon: Icons.wifi_off,
                child: Text("Disabled"),
              ),
              const SizedBox(height: 16),
              BFButton(
                onPressed: () {},
                icon: Icons.check,
                child: const Text("Accept"),
              ),
              const SizedBox(height: 16),
              BFButton(
                onPressed: () {},
                icon: Icons.close,
                child: const Text("REJECT"),
              ),
              const SizedBox(height: 32),
              DropdownButton(
                dropdownColor: Colors.green.shade900,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: const <DropdownMenuItem>[
                  DropdownMenuItem(value: 0, child: Text("m²")),
                  DropdownMenuItem(value: 1, child: Text("cm²")),
                  DropdownMenuItem(value: 2, child: Text("dm²")),
                  DropdownMenuItem(value: 3, child: Text("km")),
                ],
                value: 0,
                onChanged: (s) {},
              ),
              const SizedBox(height: 32),
              const Center(child: AllButtons()),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}

noFunc() => null;

class AllButtons extends StatelessWidget {
  const AllButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.purple,
                icon: Icons.check,
                child: Text("Purple"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.indigo,
                icon: Icons.check,
                child: Text("Indigo"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.blue,
                icon: Icons.check,
                child: Text("Blue"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.cyan,
                icon: Icons.check,
                child: Text("Cyan"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.jade,
                icon: Icons.check,
                child: Text("Jade"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.green,
                icon: Icons.check,
                child: Text("Green"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.lime,
                icon: Icons.check,
                child: Text("Lime"),
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.pink,
                icon: Icons.check,
                child: Text("Pink"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.berry,
                icon: Icons.check,
                child: Text("Berry"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.red,
                width: 90,
                icon: Icons.check,
                child: Text("Red"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.sunset,
                icon: Icons.check,
                child: Text("Sunset"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.orange,
                icon: Icons.check,
                child: Text("Orange"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.yellow,
                icon: Icons.check,
                child: Text("Yellow"),
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.ash,
                icon: Icons.check,
                child: Text("Ash"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.gray,
                icon: Icons.check,
                child: Text("Gray"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.steel,
                icon: Icons.check,
                child: Text("Steel"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.black,
                icon: Icons.check,
                child: Text("Black"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BFButton(
                onPressed: noFunc,
                colorPack: BFColorPack.brown,
                icon: Icons.check,
                child: Text("Brown"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
