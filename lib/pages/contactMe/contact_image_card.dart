import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactImageCard extends StatefulWidget {
  final String imagePath;
  final String url;
  final String heading;

  const ContactImageCard({
    super.key,
    required this.imagePath,
    required this.url,
    required this.heading,
  });

  @override
  State<ContactImageCard> createState() => _ContactImageCardState();
}

class _ContactImageCardState extends State<ContactImageCard> {
  bool _isHovered = false;

  void _launchLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: GestureDetector(
            onTap: () => _launchLink(widget.url),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: _isHovered
                    ? [
                        BoxShadow(
                          color: Colors.deepPurple.withOpacity(0.3),
                          blurRadius: 8,
                          spreadRadius: 2,
                          // offset: const Offset(0, 4),
                        ),
                      ]
                    : [],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.imagePath,
                  width: 50, // Reduced the size
                  height: 50, // Reduced the size
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        AnimatedOpacity(
          opacity: _isHovered ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 200),
          child: Text(
            widget.heading,
            style: TextStyle(
              fontSize: 14, // Slightly smaller text
              fontWeight: FontWeight.w500,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
        ),
      ],
    );
  }
}
