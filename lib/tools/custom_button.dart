import 'package:flutter/material.dart';

// Extracted TextButton widget
Widget customButton(
    String label, BuildContext context, VoidCallback onPressed) {
  return TextButton(
    onPressed: onPressed, // to be done inside the function call

    style: TextButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      minimumSize: const Size(120, 48),
      foregroundColor: Colors.deepPurple,
      splashFactory: InkRipple.splashFactory,
    ),
    child: Text(
      label,
      style: Theme.of(context).textTheme.bodySmall,
    ),
  );
}
