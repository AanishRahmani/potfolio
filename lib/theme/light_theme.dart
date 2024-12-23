import 'package:flutter/material.dart';

// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light, // base theme
//   colorScheme: ColorScheme.fromSeed(
//     seedColor: Colors.deepPurple,
//     brightness: Brightness.light, // Adapts colors for dark mode
//   ),
//   useMaterial3: true,
//   scaffoldBackgroundColor: Colors.white,
//   textTheme: const TextTheme(
//     bodySmall: TextStyle(
//       color: Colors.black,
//       fontSize: 16,
//       // fontWeight: FontWeight.w500,
//     ),
//     bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
//   ),

//   appBarTheme: const AppBarTheme(
//     backgroundColor: Colors.white, // AppBar color
//     foregroundColor: Colors.black, // Text/Icon
//   ),
// );

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.black, fontSize: 18), // New text style
    bodyMedium: TextStyle(color: Colors.black, fontSize: 20),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
);
