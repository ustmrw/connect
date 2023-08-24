import 'package:connect/responsive/desktop_body.dart';
import 'package:connect/responsive/mobile_body.dart';
import 'package:connect/responsive/responsive_layout.dart';
import 'package:connect/responsive/tablet_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 1;

  final List<Widget> pages = [
    Container(
      color: Colors.grey[200],
      alignment: Alignment.center,
      child: const Text('Search'),
    ),
    const ResponsiveLayout(
      mobileBody: MobileScaffold(),
      tabletBody: TabletScaffold(),
      desktopBody: DesktopScaffold(),
    ),
    Container(
      color: Colors.grey[200],
      alignment: Alignment.center,
      child: const Text('Profile'),
    ),
    // Add more pages if needed
  ];

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(
            () {
              currentPageIndex = index;
            },
          );
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
