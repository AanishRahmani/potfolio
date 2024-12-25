import 'package:flutter/material.dart';

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
