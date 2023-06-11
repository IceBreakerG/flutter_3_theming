// Package Imports
import 'package:flutter/material.dart';

// Internal Imports
import 'theme_constants.dart';
import 'shared/elevated_button_theme.dart';
import 'shared/input_decoration_theme.dart';

/// Tutorial Light Theme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: colorPrimary,
  ),
  elevatedButtonTheme: elevatedButtonTheme,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: colorAccent,
  ),
  inputDecorationTheme: inputDecorationTheme,
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
);
