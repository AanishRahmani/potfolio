import 'package:flutter/material.dart';
import 'ls_contact_me.dart';
import 'ss_contact_me.dart';
import 'package:person_info_site/tools/responsive_layout.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: LargeScreenContactMe(),
      smallScreen: SmallScreenContactMe(),
    );
  }
}
