import 'package:fit_app_2025/constants/constants.dart';
import 'package:flutter/material.dart';

class ListTileWithSwitch extends StatelessWidget {
  const ListTileWithSwitch({
    super.key,
    required this.toggle,
    required this.onChanged,
    required this.title,
    required this.subtitle,
  });

  final bool toggle;
  final String title;
  final String subtitle;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(
        value: toggle,
        onChanged: onChanged,
        activeColor: primaryColor,
      ),
    );
  }
}
