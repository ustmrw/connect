import 'package:connect/responsive/desktop_body.dart';
import 'package:connect/responsive/mobile_body.dart';
import 'package:connect/responsive/responsive_layout.dart';
import 'package:connect/responsive/tablet_body.dart';
import 'package:connect/user_profile.dart';
import 'package:connect/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  final searchController = TextEditingController();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 1;

  final List<Widget> pages = [
    const MySearchBar(controller: SearchController, hintText: 'Search'),
    const ResponsiveLayout(
      mobileBody: MobileScaffold(),
      tabletBody: TabletScaffold(),
      desktopBody: DesktopScaffold(),
    ),
    const ProfilePage(),
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
            label: 'HOME',
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
