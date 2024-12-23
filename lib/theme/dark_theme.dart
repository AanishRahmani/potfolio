import 'package:flutter/material.dart';

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark, // base theme
//   colorScheme: ColorScheme.fromSeed(
//     seedColor: Colors.deepPurple,
//     brightness: Brightness.dark, // Adapts colors for dark mode
//   ),
//   useMaterial3: true,
//   scaffoldBackgroundColor: Colors.black,
//   textTheme: const TextTheme(
//       bodySmall: TextStyle(
//         color: Colors.white,
//         fontSize: 16,
//         // fontWeight: FontWeight.bold,
//       ),
//       bodyMedium: TextStyle(color: Colors.white, fontSize: 20)),

//   appBarTheme: const AppBarTheme(
//     backgroundColor: Colors.black, // AppBar color
//     foregroundColor: Colors.white, // Text/Icon
//   ),
// );

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.white, fontSize: 18), // New text style
    bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),
);
