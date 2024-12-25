import 'package:flutter/material.dart';
import 'package:person_info_site/pages/aboutMe/about_me.dart';
import 'package:person_info_site/pages/contactMe/contact_me_page.dart';
import 'package:person_info_site/pages/homePage/home_page.dart';
import 'package:person_info_site/pages/project/project_page.dart';

class FinalHomePage extends StatefulWidget {
  const FinalHomePage({super.key});

  @override
  State<FinalHomePage> createState() => _FinalHomePageState();
}

class _FinalHomePageState extends State<FinalHomePage> {
  final ScrollController _scrollController = ScrollController();

  void scrollToSection(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // The upper container with clickable buttons to navigate
          Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => scrollToSection(0), // Scroll to the HomePage
                  child: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollToSection(
                      MediaQuery.of(context).size.height), // AboutMe
                  child: const Text(
                    'About Me',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollToSection(
                      MediaQuery.of(context).size.height * 2), // Projects
                  child: const Text(
                    'Projects',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollToSection(
                      MediaQuery.of(context).size.height * 3), // ContactMe
                  child: const Text(
                    'Contact',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          // The scrollable body
          Expanded(
            child: ListView(
              controller: _scrollController,
              children: const [
                SizedBox(
                  height: 700, // Adjust as per your layout
                  child: HomePage(),
                ),
                SizedBox(
                  height: 700,
                  child: AboutMe(),
                ),
                SizedBox(
                  height: 700,
                  child: ProjectPage(),
                ),
                SizedBox(
                  height: 700,
                  child: ContactMePage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
