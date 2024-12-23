import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = true; // Initial theme mode (light by default)

  bool get isDarkMode => _isDarkMode; // Getter to access theme state

  // Method to toggle the theme mode
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners(); // Notify listeners to update the UI
  }
}
