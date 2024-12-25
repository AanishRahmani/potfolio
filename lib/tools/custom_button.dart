import 'package:flutter/material.dart';

Widget customButton(String label, BuildContext context, VoidCallback onPressed,
    {TextStyle? textStyle, Color? backgroundColor}) {
  return TextButton(
    onPressed: onPressed, // to be done inside the function call
    style: TextButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      minimumSize: const Size(120, 48),
      foregroundColor: Colors.deepPurple,
      backgroundColor: backgroundColor ?? Colors.transparent,
      splashFactory: InkRipple.splashFactory,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
    ),
    child: Text(
      label,
      style: textStyle ?? Theme.of(context).textTheme.bodySmall,
    ),
  );
}
