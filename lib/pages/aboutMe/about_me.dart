import 'package:flutter/material.dart';
import 'package:person_info_site/pages/aboutMe/big_screen_about_me.dart';
import 'package:person_info_site/pages/aboutMe/small_screen_about_me.dart';

//actual layout(responsive)
class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Define the layout for large screens
    Widget largeScreen = const BigScreenAboutMe();
    // Define the layout for small screens
    Widget smallScreen = const SmallScreenAboutMe();

    return MediaQuery.of(context).size.width >= 850 ? largeScreen : smallScreen;
  }
}

// StackGridView widget to display the list of tech stack items
class StackGridView extends StatelessWidget {
  final List<Map<String, String>> stackItems;

  const StackGridView({
    super.key,
    required this.stackItems,
  });

  @override
  Widget build(BuildContext context) {
    //aspect ratio dynamic calculation
    double aspectRatio = 1.0; // Default
    double horizontalPadding = 16.0; // Default
    if (MediaQuery.of(context).size.width < 600) {
      aspectRatio = 1.5; // For small screens
      horizontalPadding = 32.0;
    } else if (MediaQuery.of(context).size.width < 900) {
      aspectRatio = 1.2; // For medium screens
      horizontalPadding = 24.0;
    }

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding), // Add horizontal padding(dynamic)
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width < 750 ? 2 : 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: aspectRatio, // adjust the aspect ratio (dynamic)
        ),
        itemCount: stackItems.length,
        itemBuilder: (context, index) {
          return HoverableStackItem(
            iconPath: stackItems[index]['icon']!,
          );
        },
      ),
    );
  }
}

// HoverableStackItem widget to display each tech stack item
class HoverableStackItem extends StatefulWidget {
  final String iconPath;

  const HoverableStackItem({
    super.key,
    required this.iconPath,
  });

  @override
  // ignore: library_private_types_in_public_api
  _HoverableStackItemState createState() => _HoverableStackItemState();
}

class _HoverableStackItemState extends State<HoverableStackItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: isHovered
              ? Colors.deepPurple.withOpacity(0.1)
              : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Image.asset(
              widget.iconPath,
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
