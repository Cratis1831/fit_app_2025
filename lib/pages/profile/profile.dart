import 'package:fit_app_2025/constants/colors.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileHeader(name: "Ashkan Sotoudeh", workouts: 800),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
