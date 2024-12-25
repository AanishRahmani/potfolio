import 'package:flutter/material.dart';
import 'package:person_info_site/pages/aboutMe/about_me.dart';
import 'package:person_info_site/pages/aboutMe/about_me_stack_items.dart';
import 'package:person_info_site/pages/aboutMe/build_rich_text.dart';
import 'package:person_info_site/tools/carousel.dart';
import 'package:person_info_site/tools/upper_container.dart';

class BigScreenAboutMe extends StatelessWidget {
  const BigScreenAboutMe({super.key, this.onThemeToggle, this.isDarkMode});
  final Function(bool)? onThemeToggle;
  final bool? isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main Scrollable Content
          SingleChildScrollView(
            padding: const EdgeInsets.only(
                top:
                    120), // Add padding to prevent overlap with the upper container
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left side: Image Carousel + Education section
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 300,
                              child: ImageCarousel(),
                            ),
                            const SizedBox(height: 20),
                            // Education details
                            Column(
                              children: [
                                const Text(
                                  'EDUCATION',
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                buildRichText(
                                  context,
                                  title: 'Bachelor of Technology IT Engg\n',
                                  subtitle:
                                      'Maharaja Agrasen Institute of Technology\n',
                                  details: '2023-2026',
                                ),
                                const SizedBox(height: 20),
                                buildRichText(
                                  context,
                                  title: 'Diploma in Automobile Engg\n',
                                  subtitle: 'Pusa Institute of Technology\n',
                                  details: '2020-2023',
                                ),
                                const SizedBox(height: 20),
                                buildRichText(
                                  context,
                                  title: 'Schooling\n',
                                  subtitle: 'Kamal Model Sr. Sec. School\n',
                                  details: '2008-2019',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Right side: Tech Stack section
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              'MY TECH STACK',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: 16),
                            // Tech Stack Grid
                            SizedBox(
                              height: 1000,
                              child: StackGridView(
                                stackItems: stackItems,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Fixed Upper Container at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: UpperContainer(
              onThemeToggle: onThemeToggle ?? (_) {},
              isDarkMode: isDarkMode ?? true,
              heading: 'ABOUT ME',
            ),
          ),
        ],
      ),
    );
  }
}
