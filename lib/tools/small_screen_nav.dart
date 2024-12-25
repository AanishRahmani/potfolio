import 'package:flutter/material.dart';
import 'package:person_info_site/themeProvider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:person_info_site/pages/homePage/home_page.dart';
import 'package:person_info_site/pages/aboutMe/about_me.dart';
import 'package:person_info_site/pages/project/project_page.dart';
import 'package:person_info_site/pages/contactMe/contact_me_page.dart';
import 'package:switcher_button/switcher_button.dart'; // Import switcher button

class SmallScreenNav extends StatelessWidget {
  const SmallScreenNav({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Drawer(
      child: Column(
        children: [
          // Drawer header with reduced padding
          DrawerHeader(
            padding:
                const EdgeInsets.all(16), // Adjusted padding for a clean look
            child: Row(
              children: [
                const Icon(
                  Icons.menu, // Icon for the navigation
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  'Navigation',
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .color, // Access theme text color
                    fontSize: 20, // Increased font size for clarity
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Navigation items
          _navItem('HOME', context, const HomePage()),
          _navItem('ABOUT ME', context, const AboutMe()),
          _navItem('PROJECT', context, const ProjectPage()),
          _navItem('CONTACT ME', context, const ContactMePage()),

          const Spacer(), // Spacer to push the SwitcherButton to the bottom

          // SwitcherButton at the bottom of the Drawer
          Padding(
            padding: const EdgeInsets.all(
                16.0), // Adjusted padding around the switcher
            child: Align(
              alignment: Alignment.center, // Center the button horizontally
              child: SwitcherButton(
                value: isDarkMode, // Use current theme state
                onChange: (value) {
                  // Toggle theme state when the switch is changed
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Navigation item method to keep code DRY
  Widget _navItem(String title, BuildContext context, Widget page) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodySmall?.color,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
