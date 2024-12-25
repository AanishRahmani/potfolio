import 'package:flutter/material.dart';
import 'package:person_info_site/tools/responsive_layout.dart';
import 'package:person_info_site/tools/upper_container.dart';
import 'package:person_info_site/tools/small_screen_nav.dart';
import 'package:person_info_site/pages/homePage/home_page_body.dart';
import 'package:person_info_site/themeProvider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the current theme state from the ThemeProvider
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    // Define a function for large screen layout
    Widget largeScreen = Scaffold(
      backgroundColor: Theme.of(context)
          .scaffoldBackgroundColor, // Adaptive background color
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpperContainer(
              heading: 'WELCOME!',
              onThemeToggle: (isDark) {
                // Toggle theme through ThemeProvider using the provider
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              isDarkMode: isDarkMode,
            ),
            const SizedBox(
                height: 20), // Spacing between upper container and content
            const HomePageBody(), // The main content of the homepage
          ],
        ),
      ),
    );

    // Define a function for small screen layout
    Widget smallScreen = Scaffold(
      backgroundColor: Theme.of(context)
          .scaffoldBackgroundColor, // Adaptive background color
      appBar: AppBar(
        title: const Text(
          'WELCOME',
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open the drawer
            },
          ),
        ),
      ),
      drawer: const SmallScreenNav(), // Custom side nav for small screens
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            HomePageBody(),
          ],
        ),
      ),
    );

    return ResponsiveLayout(
      largeScreen: largeScreen, // Pass large screen content
      smallScreen: smallScreen, // Pass small screen content
    );
  }
}
