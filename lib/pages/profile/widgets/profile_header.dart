import 'package:fit_app_2025/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final int workouts;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.workouts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      // decoration: BoxDecoration(
      //   color: Colors.greenAccent,
      //   border: Border.all(color: Colors.grey),
      //   borderRadius: BorderRadius.circular(10),
      // ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          // Avatar
          const CircleAvatar(
            radius: 30,
            backgroundImage:
                NetworkImage('https://randomuser.me/api/portraits/lego/5.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis)),
              Text(
                '$workouts workout(s)',
                style: const TextStyle(
                  color: textColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
