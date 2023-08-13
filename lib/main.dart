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
    "Booth Map",
    "Updates",
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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.location_pin),
              label: pageNames[0],
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.update),
              label: pageNames[1],
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: pageNames[2],
            ),
          ],
          onTap: (int newPageIndex) {
            setState(() {
              currentPage = newPageIndex;
            });
          },
          currentIndex: currentPage,
          backgroundColor: colorScheme.surface,
          selectedFontSize: 0,
          iconSize: 30,
          elevation: 30,
        ));
  }
}
