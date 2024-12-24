import 'package:flutter/material.dart';
import 'package:person_info_site/tools/upper_container.dart';
import 'package:person_info_site/pages/homePage/home_page_body.dart';
import 'package:person_info_site/themeProvider/theme_provider.dart';
import 'package:provider/provider.dart'; // Import provider
// import 'package:person_info_site/tools/theme_manager.dart'; // Import ThemeManager

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the current theme state from the ThemeProvider
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Scaffold(
      body: Column(
        children: [
          UpperContainer(
            heading: 'WELCOME!',
            // Toggle theme through ThemeProvider using the provider
            onThemeToggle: (isDark) {
              // This will toggle the theme through ThemeProvider
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            isDarkMode: isDarkMode,
          ),
          const SizedBox(
            height: 100,
          ),
          const HomePageBody(),
        ],
      ),
    );
  }
}
