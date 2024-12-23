import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:person_info_site/pages/homePage/home_page.dart';
import 'package:person_info_site/theme/dark_theme.dart';
import 'package:person_info_site/theme/light_theme.dart';
import 'package:person_info_site/themeProvider/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(), // Providing the ThemeProvider globally
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the current theme state
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: lightTheme, // Light theme settings
      darkTheme: darkTheme, // Dark theme settings
      themeMode: isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light, // Determine theme mode based on global state
      home: const HomePage(),
    );
  }
}
