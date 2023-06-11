// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// StateNotifier to retrieve the current theme mode
class ThemeManager extends StateNotifier<ThemeMode> {
  final ThemeMode themeMode;

  ThemeManager(this.themeMode) : super(themeMode);
}

/// StateNotifier to retrieve and set the action switch value
class ThemeState extends StateNotifier<bool> {
  ThemeState() : super(false);

  void toggleState() => state = !state;
}

/// StateNotifierProvider to retrieve the ThemeManager StateNotifier class
final themeManagerProvider = StateNotifierProvider<ThemeManager, ThemeMode>((ref) {
  final isDark = ref.watch(themeStateProvider);

  return ThemeManager(isDark ? ThemeMode.dark : ThemeMode.light);
});

/// StateNotifierProvider to retrieve the ThemeState StateNotifier class
final themeStateProvider = StateNotifierProvider<ThemeState, bool>((ref) => ThemeState());
