import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final Color? textColor;
  final Color scaffoldBackgroundColor;
  final Color borderColor;
  final Color hintColor;
  final Color labelColor;
  final int maxLines;
  final String? Function(String?)? validator;

  const BuildTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.icon,
    required this.textColor,
    required this.scaffoldBackgroundColor,
    required this.borderColor,
    required this.hintColor,
    required this.labelColor,
    this.maxLines = 1,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      maxLines: maxLines,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: labelColor),
        hintText: 'Enter $label',
        hintStyle: TextStyle(color: hintColor),
        prefixIcon: Icon(icon, color: textColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
    );
  }
}
