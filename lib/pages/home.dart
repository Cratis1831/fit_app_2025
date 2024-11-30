import 'package:fit_app_2025/pages/create_workout/create_workout.dart';
import 'package:fit_app_2025/pages/exercises/exercises.dart';
import 'package:fit_app_2025/pages/history/history.dart';
import 'package:fit_app_2025/pages/profile/profile.dart';
import 'package:fit_app_2025/pages/settings/settings.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  final List<Widget> _pages = const [
    ProfilePage(),
    HistoryPage(),
    CreateWorkoutPage(),
    ExercisesPage(),
    SettingsPage(),
  ];

  final List<NavigationDestination> _destinations = [
    const NavigationDestination(
      selectedIcon: Icon(Icons.person_rounded),
      icon: Icon(
        Icons.person_outline_rounded,
        color: subTextColor,
      ),
      label: 'Profile',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.history_rounded),
      icon: Icon(
        Icons.history_rounded,
        color: subTextColor,
      ),
      label: 'History',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.add_box_outlined),
      icon: Icon(
        Icons.add_box_outlined,
        color: subTextColor,
      ),
      label: 'Workout',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.fitness_center_rounded),
      icon: Icon(
        Icons.fitness_center_rounded,
        color: subTextColor,
      ),
      label: 'Exercises',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.settings_rounded),
      icon: Icon(
        Icons.settings_outlined,
        color: subTextColor,
      ),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          // backgroundColor: Colors.transparent,
          selectedIndex: currentPageIndex,
          height: 40,
          destinations: _destinations.map((destination) {
            return NavigationDestination(
              selectedIcon: Icon(
                (destination.selectedIcon as Icon).icon,
              ),
              icon: destination.icon,
              label: destination.label,
            );
          }).toList(),
        ),
      ),
    );
  }
}
