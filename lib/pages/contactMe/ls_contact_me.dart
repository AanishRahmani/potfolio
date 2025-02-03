import 'package:flutter/material.dart';
import 'package:person_info_site/pages/contactMe/_buildForm.dart';
import 'package:person_info_site/pages/contactMe/contact_image_card.dart';
import 'package:person_info_site/tools/upper_container.dart';

class LargeScreenContactMe extends StatelessWidget {
  final Function(bool)? onThemeToggle;
  final bool? isDarkMode;

  const LargeScreenContactMe({super.key, this.onThemeToggle, this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodySmall?.color;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final borderColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black54; // Adaptive border color
    final labelColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black87; // Adaptive label color
    final hintColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black54; // Adaptive hint text color

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpperContainer(
              heading: 'CONTACT ME',
              onThemeToggle: onThemeToggle ?? (_) {},
              isDarkMode: isDarkMode ?? true,
            ),
            const SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                    border: Border.all(color: borderColor, width: 2),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: borderColor.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: 400,
                    child: BuildForm(
                      textColor: textColor,
                      scaffoldBackgroundColor: scaffoldBackgroundColor,
                      borderColor: borderColor,
                      hintColor: hintColor,
                      labelColor: labelColor,
                    ),
                  ),
                ),
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
