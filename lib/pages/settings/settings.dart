import 'package:fit_app_2025/constants/constants.dart';
import 'package:fit_app_2025/widgets/list_tile_with_switch.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool soundEffects = true;
  bool notifications = true;
  bool darkMode = false;
  bool isLbs = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTileWithSwitch(
            title: 'Sound Effects',
            subtitle: 'Enable or disable sound effects',
            toggle: soundEffects,
            onChanged: (value) => {
              setState(() {
                soundEffects = value;
              }),
            },
          ),
          ListTileWithSwitch(
            title: 'Notifications',
            subtitle: 'Enable or disable notifications',
            toggle: notifications,
            onChanged: (value) => {
              setState(() {
                notifications = value;
              }),
            },
          ),
          ListTileWithSwitch(
            title: 'Dark Mode',
            subtitle: 'Enable or disable dark mode',
            toggle: darkMode,
            onChanged: (value) => {
              setState(() {
                darkMode = value;
              }),
            },
          ),
          ListTileWithSwitch(
            title: 'Weight Unit',
            subtitle: 'Change weight unit to lbs',
            toggle: isLbs,
            onChanged: (value) => {
              setState(() {
                isLbs = value;
              }),
            },
          ),
          const Divider(
            indent: kDefaultDividerIndent,
            endIndent: kDefaultDividerIndent,
          ),
        ],
      ),
    );
  }
}
