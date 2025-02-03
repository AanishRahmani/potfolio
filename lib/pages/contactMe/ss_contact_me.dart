import 'package:flutter/material.dart';
import 'package:person_info_site/pages/contactMe/_buildForm.dart';
import 'package:person_info_site/pages/contactMe/contact_image_card.dart';
import 'package:person_info_site/tools/small_screen_nav.dart';

class SmallScreenContactMe extends StatelessWidget {
  const SmallScreenContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodySmall?.color;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final borderColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black54;
    final labelColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black87;
    final hintColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black54;

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Contact Me',
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
      drawer: const SmallScreenNav(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              // width: 450,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: scaffoldBackgroundColor,
                border: Border.all(
                  color: borderColor, // Border color adapts based on theme
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: BuildForm(
                textColor: textColor,
                scaffoldBackgroundColor: scaffoldBackgroundColor,
                borderColor: borderColor,
                hintColor: hintColor,
                labelColor: labelColor,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactImageCard(
                    imagePath: 'assets/linkedin.png',
                    url: 'https://www.linkedin.com/in/aanish-rahmani',
                    heading: 'linkedIn'),
                SizedBox(
                  width: 5,
                ),
                ContactImageCard(
                    imagePath: 'assets/github.png',
                    url: 'https://github.com/AanishRahmani',
                    heading: 'Github'),
                SizedBox(
                  width: 5,
                ),
                ContactImageCard(
                    imagePath: 'assets/drive.png',
                    url:
                        'https://drive.google.com/drive/folders/1kDQkXy-NLqR4u9Pi1gmBs9wvraCSOkBf',
                    heading: 'CV'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
