import 'package:flutter/material.dart';
import 'package:person_info_site/pages/project/project_card.dart';
import 'package:person_info_site/tools/small_screen_nav.dart';

class SmallScreenCode extends StatelessWidget {
  const SmallScreenCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PROJECTS',
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
      drawer:
          const SmallScreenNav(), // Custom side navigation for small screens
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //add space if needed
                ProjectCard(
                  heading: 'Project 2',
                  imagePath: 'assets/flutter1.png',
                  githubUrl: 'https://github.com/AanishRahmani',
                ),
                SizedBox(
                  height: 10,
                ),
                Text('data'),
                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Project 2',
                  imagePath: 'assets/flutter1.png',
                  githubUrl: 'https://github.com/AanishRahmani',
                ),
                SizedBox(
                  height: 10,
                ),
                Text('data'),
                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Project 2',
                  imagePath: 'assets/flutter1.png',
                  githubUrl: 'https://github.com/AanishRahmani',
                ),
                SizedBox(
                  height: 10,
                ),
                Text('data'),
                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Project 2',
                  imagePath: 'assets/flutter1.png',
                  githubUrl: 'https://github.com/AanishRahmani',
                ),
                SizedBox(
                  height: 10,
                ),
                Text('data'),
                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Project 2',
                  imagePath: 'assets/flutter1.png',
                  githubUrl: 'https://github.com/AanishRahmani',
                ),
                SizedBox(
                  height: 10,
                ),
                Text('data'),
                // Add more ProjectCards directly
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
