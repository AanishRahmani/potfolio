import 'package:flutter/material.dart';
import 'package:person_info_site/pages/homePage/ls_home_page_body.dart';
import 'package:person_info_site/pages/homePage/ss_home_page_body.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context)
          .scaffoldBackgroundColor, // Ensure consistent background color
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Make the entire body scrollable
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  // Check if the screen is small (width less than 800)
                  bool isSmallScreen = constraints.maxWidth < 800;

                  // Use the appropriate layout based on screen size
                  return isSmallScreen
                      ? const SsHomePageBody() // Small screen layout
                      : const LsHomePageBody(); // Large screen layout
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
