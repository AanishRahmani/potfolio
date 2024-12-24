import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String heading;
  final String imagePath;
  final String githubUrl;

  const ProjectCard({
    super.key,
    required this.heading,
    required this.imagePath,
    required this.githubUrl,
  });

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  // Launch GitHub link
  void _launchGitHubLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () => _launchGitHubLink(widget.githubUrl),
        child: Material(
          elevation: isHovered ? 10 : 5, // Elevation effect on hover
          borderRadius: BorderRadius.circular(15), // Rounded corners
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300), // Smooth animation
            curve: Curves.easeInOut,
            transform: isHovered
                ? Matrix4.identity().scaled(1.05) // Slight zoom on hover
                : Matrix4.identity(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 15,
                        offset: const Offset(0, 10),
                      ),
                    ]
                  : [],
            ),
            height: 250, // Adjust height to make the card more prominent
            width: 300, // Fixed width for consistency
            child: Stack(
              children: [
                // Fade the image on hover and make it cover the container
                Opacity(
                  opacity: isHovered ? 0.5 : 1.0, // Fade effect on hover
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit
                          .cover, // Ensure the image covers the entire container
                      width: double
                          .infinity, // Ensures the image stretches horizontally
                      height: double
                          .infinity, // Ensures the image stretches vertically
                    ),
                  ),
                ),
                // Show the text only on hover
                AnimatedOpacity(
                  opacity: isHovered ? 1.0 : 0.0, // Text appears on hover
                  duration: const Duration(milliseconds: 300),
                  child: Center(
                    child: Text(
                      widget.heading,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        shadows: [
                          Shadow(
                            offset: const Offset(1, 1),
                            blurRadius: 6,
                            color: Colors.deepPurple.withOpacity(0.6),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
