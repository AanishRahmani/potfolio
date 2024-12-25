import 'package:flutter/material.dart';
import 'package:person_info_site/themeProvider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:person_info_site/tools/custom_button.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:person_info_site/pages/aboutMe/about_me.dart';
import 'package:person_info_site/pages/contactMe/contact_me_page.dart';
import 'package:person_info_site/pages/homePage/home_page.dart';
import 'package:person_info_site/pages/project/project_page.dart';

class UpperContainer extends StatelessWidget {
  final String heading;

  const UpperContainer({
    super.key,
    required this.heading,
    required Function(bool p1) onThemeToggle,
    required bool isDarkMode, // 'heading' is required
  });

  @override
  Widget build(BuildContext context) {
    // Access the current theme state from the ThemeProvider
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Material(
      elevation: 8,
      shadowColor: Colors.deepPurple.withOpacity(0.5),
      color: Theme.of(context)
          .scaffoldBackgroundColor, // Match scaffold background
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context)
              .scaffoldBackgroundColor, // Match scaffold background
          border: Border(
            bottom: BorderSide(
              color: Colors.deepPurple.withOpacity(0.5),
              width: 3,
            ),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            Text(
              heading,
              style: const TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const Spacer(),
            // Custom buttons to navigate to different pages
            customButton('HOME', context, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            }),
            const SizedBox(width: 15),
            customButton('ABOUT ME', context, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutMe()),
              );
            }),
            const SizedBox(width: 15),
            customButton('PROJECT', context, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProjectPage()),
              );
            }),
            const SizedBox(width: 15),
            customButton('CONTACT ME', context, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactMePage()),
              );
            }),
            const SizedBox(width: 15),
            // Switch theme using ThemeProvider's toggleTheme function
            SwitcherButton(
              value:
                  isDarkMode, // Use the current theme state from the provider
              onChange: (value) {
                // Toggle theme state in the provider when the switch is changed
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(); // Toggle theme in the provider
              },
            ),
          ],
        ),
      ),
    );
  }
}
