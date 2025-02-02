import 'package:flutter/material.dart';
import 'package:person_info_site/pages/aboutMe/about_me.dart';
import 'package:person_info_site/pages/aboutMe/about_me_stack_items.dart';
import 'package:person_info_site/pages/aboutMe/build_rich_text.dart';
import 'package:person_info_site/tools/carousel.dart';
import 'package:person_info_site/tools/small_screen_nav.dart';

class SmallScreenAboutMe extends StatelessWidget {
  const SmallScreenAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display SmallScreenNav only for small screens (less than 600px width)
      drawer: MediaQuery.of(context).size.width < 850
          ? const SmallScreenNav()
          : null,
      appBar: AppBar(
        title: const Text(
          'ABOUT ME',
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Carousel
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
                  subtitle: 'Maharaja Agrasen Institute of Technology\n',
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
            const SizedBox(height: 20),

            // Tech Stack Section
            Text(
              'TECHNOLOGIES I USE',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            // Tech Stack Grid
            SizedBox(
              height: 800,
              child: StackGridView(
                stackItems: stackItems,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
