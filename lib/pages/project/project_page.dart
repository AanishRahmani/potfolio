import 'package:flutter/material.dart';
import 'package:person_info_site/pages/project/big_screen_code.dart';
import 'package:person_info_site/pages/project/small_screen_code.dart';
import 'package:person_info_site/tools/responsive_layout.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: BigScreenCode(),
      smallScreen: SmallScreenCode(),
    );
  }
}
