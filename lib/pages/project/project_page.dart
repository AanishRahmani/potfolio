import 'package:flutter/material.dart';
import 'package:person_info_site/pages/project/project_card.dart';
import 'package:person_info_site/tools/upper_container.dart';

class ProjectPage extends StatelessWidget {
  final Function(bool)? onThemeToggle;
  final bool? isDarkMode;

  const ProjectPage({super.key, this.onThemeToggle, this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Upper container
              SizedBox(
                width: double.infinity,
                // padding: const EdgeInsets.all(16.0),
                child: UpperContainer(
                  onThemeToggle: onThemeToggle ?? (_) {},
                  isDarkMode: isDarkMode ?? true,
                  heading: 'PROJECTS',
                ),
              ),
              // Row with project description on the left and project cards on the right
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    // Left column (Description)
                    Expanded(
                      flex: 1, // Allow the text column to take up some space
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  'This is a brief description of the projects below. '
                                  'Each project is designed to showcase the skills and '
                                  'technologies used in the development process. The following '
                                  'projects include mobile applications, web development, and more. '
                                  'Click on each project for more details on GitHub.\n\n'
                                  'Explore and learn about each project’s purpose, technologies '
                                  'used, and how they solve specific problems.',
                              style: Theme.of(context).textTheme.bodySmall
                              // TextStyle(
                              //   color:
                              //       Theme.of(context).textTheme.bodySmall?.color,
                              //   fontSize: 16,
                              // ),
                              ),
                        ),
                      ),
                    ),
                    // const Spacer(),
                    // const SizedBox(
                    //   width: 700,
                    // ),
                    // Right column with Project Cards
                    const Expanded(
                      flex: 2, // Allow the project cards to take up more space
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ProjectCard(
                            heading: 'Project 1',
                            imagePath: 'assets/flutter1.png',
                            githubUrl: 'https://github.com/AanishRahmani',
                          ),
                          SizedBox(height: 20),
                          ProjectCard(
                            heading: 'Project 2',
                            imagePath: 'assets/flutter1.png',
                            githubUrl: 'https://github.com/AanishRahmani',
                          ),
                          SizedBox(height: 20),
                          ProjectCard(
                            heading: 'Project 3',
                            imagePath: 'assets/flutter1.png',
                            githubUrl: 'https://github.com/AanishRahmani',
                          ),
                          SizedBox(height: 20),
                          ProjectCard(
                            heading: 'Project 4',
                            imagePath: 'assets/flutter1.png',
                            githubUrl: 'https://github.com/AanishRahmani',
                          ),
                          SizedBox(height: 20),
                          ProjectCard(
                            heading: 'Project 5',
                            imagePath: 'assets/flutter1.png',
                            githubUrl: 'https://github.com/AanishRahmani',
                          ),
                          SizedBox(height: 20),
                          ProjectCard(
                            heading: 'Project 6',
                            imagePath: 'assets/flutter1.png',
                            githubUrl: 'https://github.com/AanishRahmani',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
