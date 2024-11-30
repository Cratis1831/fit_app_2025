import 'package:fit_app_2025/constants/theme.dart';
import 'package:fit_app_2025/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}
