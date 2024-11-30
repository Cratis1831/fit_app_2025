// create a ThemeData() variable
import 'package:fit_app_2025/constants/constants.dart';
import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textColor),
      bodyMedium: TextStyle(color: textColor),
      titleLarge: TextStyle(color: textColor),
      titleMedium: TextStyle(color: textColor),
      titleSmall: TextStyle(color: textColor),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: backgroundColor,
      indicatorColor: primaryColor,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      labelTextStyle:
          WidgetStateProperty.all(const TextStyle(color: textColor)),
    ),
    // navigation destination theme

    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    listTileTheme: const ListTileThemeData(
      tileColor: backgroundColor,
      contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      titleTextStyle: TextStyle(color: textColor),
      subtitleTextStyle: TextStyle(color: subTextColor),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ));

final lightTheme = ThemeData(
    scaffoldBackgroundColor: textColor,
    primaryColor: primaryColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: backgroundColor),
      bodyMedium: TextStyle(color: backgroundColor),
      titleLarge: TextStyle(color: backgroundColor),
      titleMedium: TextStyle(color: backgroundColor),
      titleSmall: TextStyle(color: backgroundColor),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: textColor,
      indicatorColor: primaryColor,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      labelTextStyle:
          WidgetStateProperty.all(const TextStyle(color: backgroundColor)),
    ),
    // navigation destination theme

    appBarTheme: const AppBarTheme(
      backgroundColor: textColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: backgroundColor, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    listTileTheme: const ListTileThemeData(
      tileColor: textColor,
      contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      titleTextStyle: TextStyle(color: backgroundColor),
      subtitleTextStyle: TextStyle(color: backgroundColor),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ));
