import 'package:flutter/material.dart';
import 'package:person_info_site/pages/project/project_card.dart';
import 'package:person_info_site/tools/upper_container.dart';

class BigScreenCode extends StatelessWidget {
  const BigScreenCode({super.key, this.onThemeToggle, this.isDarkMode});

  final Function(bool)? onThemeToggle;
  final bool? isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 100), // Space below UpperContainer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text('data'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Project 2',
                        imagePath: 'assets/flutter1.png',
                        githubUrl: 'https://github.com/AanishRahmani',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text('data'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Project 2',
                        imagePath: 'assets/flutter1.png',
                        githubUrl: 'https://github.com/AanishRahmani',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text('data'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Project 2',
                        imagePath: 'assets/flutter1.png',
                        githubUrl: 'https://github.com/AanishRahmani',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text('data'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Project 2',
                        imagePath: 'assets/flutter1.png',
                        githubUrl: 'https://github.com/AanishRahmani',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text('data'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Project 2',
                        imagePath: 'assets/flutter1.png',
                        githubUrl: 'https://github.com/AanishRahmani',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: UpperContainer(
              onThemeToggle: onThemeToggle ?? (_) {},
              isDarkMode: isDarkMode ?? true,
              heading: 'PROJECTS',
            ),
          ),
        ],
      ),
    );
  }
}
