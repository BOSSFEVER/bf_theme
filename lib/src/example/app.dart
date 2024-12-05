import 'package:flutter/material.dart';

import 'buttons.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int selected = 0;

  void _onDestinationSelected(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BF Theme'),
      ),
      drawer: NavigationDrawer(
        onDestinationSelected: _onDestinationSelected,
        selectedIndex: selected,
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
        child: switch (selected) {
          0 => ButtonsScreen(),
          _ => Placeholder(
              strokeWidth: 3,
              color: Colors.green,
            ),
        },
      ),
    );
  }
}
