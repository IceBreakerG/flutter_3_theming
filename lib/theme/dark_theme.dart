// Package Imports
import 'package:flutter/material.dart';

// Internal Imports
import 'shared/elevated_button_theme.dart';
import 'shared/input_decoration_theme.dart';

/// Tutorial Dark Theme
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.white,
  ),
  elevatedButtonTheme: elevatedButtonTheme,
  inputDecorationTheme: inputDecorationTheme,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all<Color>(Colors.white),
    trackColor: MaterialStateProperty.all<Color>(Colors.grey),
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
);
