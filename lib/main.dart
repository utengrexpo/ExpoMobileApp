import 'package:expo_mobile_app_2023/pages/live_updates_page.dart';
import 'package:expo_mobile_app_2023/pages/map_page.dart';
import 'package:expo_mobile_app_2023/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:expo_mobile_app_2023/style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData.from(colorScheme: colorScheme, textTheme: textTheme),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<String> pageNames = const [
    "Employer Booth Map",
    "Live Updates",
    "Settings",
  ];
  List<Widget> pages = const [
    MapPage(),
    LiveUpdatesPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(pageNames[currentPage])),
        ),
        body: pages[currentPage],
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.location_pin), label: 'Employer Booth Map'),
            NavigationDestination(icon: Icon(Icons.update), label: 'Updates'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Settings'),
          ],
          onDestinationSelected: (int newPageIndex) {
            setState(() {
              currentPage = newPageIndex;
            });
          },
          selectedIndex: currentPage,
        ));
  }
}
