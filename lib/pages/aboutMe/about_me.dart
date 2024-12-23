import 'package:flutter/material.dart';
import 'package:person_info_site/pages/homePage/upper_container.dart';
import 'package:person_info_site/tools/carousel.dart';

class AboutMe extends StatelessWidget {
  final Function(bool)? onThemeToggle; // Optional callback for theme toggle
  final bool? isDarkMode; // Optional tracking of the current theme mode

  const AboutMe({
    super.key,
    this.onThemeToggle, // Optional
    this.isDarkMode, // Optional
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Material(
              color: Theme.of(context).scaffoldBackgroundColor,
              // elevation: 10,
              shadowColor: Colors.deepPurple,
              child: Container(
                width: double.infinity,
                // height: double.infinity,
                padding: const EdgeInsets.all(16.0),

                // padding: const EdgeInsets.all(8.0),
                child: UpperContainer(
                  onThemeToggle: onThemeToggle ??
                      (_) {}, // Default to empty callback if null
                  isDarkMode: isDarkMode ?? false, // Default to false if null
                  heading: 'ABOUT ME',
                ),
              ),
            ),
            const Expanded(
              flex: 3,
              child: ImageCarousel(),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ListView(
                  children: [
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build RichText with a centered layout and margin
  Widget buildRichText(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String details,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodySmall ??
                const TextStyle(color: Colors.black), // Apply bodySmall here
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 24),
                children: <TextSpan>[
                  TextSpan(
                    text: subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: details,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
