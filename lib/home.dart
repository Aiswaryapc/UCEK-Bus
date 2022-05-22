import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ucek_bus/main.dart';
import 'package:ucek_bus/navpage/profile_page.dart';
import 'package:ucek_bus/navpage/settings.dart';

const primaryColor = Color(0xFF255ED6);

const defaultPadding = 16.0;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavWidget(),
    );
  }
}

class NavWidget extends StatefulWidget {
  const NavWidget({Key? key}) : super(key: key);

  @override
  State<NavWidget> createState() => _NavWidgetState();
}

class _NavWidgetState extends State<NavWidget> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Text("home"),
    Text("profile"),
    Text("settings"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: pages[_currentIndex],
        ),
        bottomNavigationBar: NavigationBar(
          animationDuration: const Duration(seconds: 1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "home",
              selectedIcon: Icon(Icons.home_outlined),
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "profile",
              selectedIcon: Icon(Icons.person_pin),
              // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: "home",
              selectedIcon: Icon(Icons.settings_applications_sharp),
              // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            ),
          ],
        ));
  }
}
