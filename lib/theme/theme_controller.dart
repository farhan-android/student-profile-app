import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Simple global theme controller so any widget can toggle
/// between Dark / Light mode and have it persist across app restarts.
class ThemeController {
  ThemeController._();
  static final ThemeController instance = ThemeController._();

  final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);

  static const _prefsKey = 'isDarkMode';

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_prefsKey) ?? false;
    themeMode.value = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  Future<void> toggleTheme() async {
    final isDark = themeMode.value == ThemeMode.dark;
    themeMode.value = isDark ? ThemeMode.light : ThemeMode.dark;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_prefsKey, !isDark);
  }

  bool get isDarkMode => themeMode.value == ThemeMode.dark;
}
