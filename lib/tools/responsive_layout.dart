import 'package:flutter/material.dart';
import 'package:person_info_site/tools/small_screen_nav.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen; // Direct Widget type
  final Widget smallScreen; // Direct Widget type

  const ResponsiveLayout({
    super.key,
    required this.largeScreen,
    required this.smallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 850) {
          return Row(
            children: [
              Expanded(
                child: largeScreen, // Shows the main layout for large screens
              ),
            ],
          );
        } else {
          return Scaffold(
            // appBar: AppBar(
            //   title: Text('App Name'),
            // ),
            drawer: const SmallScreenNav(),
            body: smallScreen, // Pass the small screen content
          );
        }
      },
    );
  }
}
