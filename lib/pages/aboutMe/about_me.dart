import 'package:flutter/material.dart';
import 'package:person_info_site/pages/homePage/upper_container.dart';
import 'package:person_info_site/tools/carousel.dart';

class StackGridView extends StatelessWidget {
  final List<Map<String, String>> stackItems;

  const StackGridView({
    super.key,
    required this.stackItems,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns
        crossAxisSpacing: 16.0, // Spacing between columns
        mainAxisSpacing: 16.0, // Spacing between rows
        childAspectRatio: 1.0, // Adjust the aspect ratio of each grid item
      ),
      itemCount: stackItems.length,
      itemBuilder: (context, index) {
        return HoverableStackItem(
          iconPath: stackItems[index]['icon']!,
        );
      },
    );
  }
}

class HoverableStackItem extends StatefulWidget {
  final String iconPath;

  const HoverableStackItem({
    super.key,
    required this.iconPath,
  });

  @override
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
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ]
              : [],
        ),
        padding: const EdgeInsets.all(16),
        height: 120, // Increased size of the box
        width: 120, // Increased size of the box
        child: Center(
          child: Image.asset(
            widget.iconPath,
            height: 60, // Increased size of the icon
            width: 60, // Increased size of the icon
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  final Function(bool)? onThemeToggle;
  final bool? isDarkMode;

  const AboutMe({
    super.key,
    this.onThemeToggle,
    this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> stackItems = [
      {'title': 'Flutter', 'icon': 'assets/flutter1.png'},
      {'title': 'Python', 'icon': 'assets/python.png'},
      {'title': 'Dart', 'icon': 'assets/dart.png'},
      {'title': 'Firebase', 'icon': 'assets/firebase.png'},
      {'title': 'Git', 'icon': 'assets/git.png'},
      {'title': 'HTML/CSS', 'icon': 'assets/flask.png'},
      {'title': 'Java', 'icon': 'assets/git.png'},
      {'title': 'C++', 'icon': 'assets/flask.png'},
      {'title': 'SQL', 'icon': 'assets/firebase.png'},
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Upper Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: UpperContainer(
                onThemeToggle: onThemeToggle ?? (_) {},
                isDarkMode: isDarkMode ?? false,
                heading: 'ABOUT ME',
              ),
            ),

            // Main Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Column
                  Expanded(
                    flex: 6,
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
                                  fontWeight: FontWeight.bold),
                            ),
                            buildRichText(
                              context,
                              title: 'Bachelor of Technology IT Engg\n',
                              subtitle:
                                  'Maharaja Agrasen Institute of Technology\n',
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
                      ],
                    ),
                  ),

                  const SizedBox(width: 16), // Spacing between columns

                  // Right Column
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        // Tech Stack Title
                        Text(
                          'MY TECH STACK',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 16),
                        // Tech Stack Grid
                        SizedBox(
                          height:
                              1000, // Make sure it's large enough to show all items
                          child: StackGridView(stackItems: stackItems),
                        ),
                      ],
                    ),
                  ),
                ],
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
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: title,
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
          children: <TextSpan>[
            TextSpan(
              text: subtitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            TextSpan(
              text: details,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
