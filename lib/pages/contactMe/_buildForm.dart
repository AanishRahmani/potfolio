import 'package:flutter/material.dart';
import 'package:person_info_site/pages/contactMe/_buildTextField.dart';

class BuildForm extends StatelessWidget {
  final Color? textColor;
  final Color scaffoldBackgroundColor;
  final Color borderColor;
  final Color hintColor;
  final Color labelColor;

  const BuildForm({
    super.key,
    required this.textColor,
    required this.scaffoldBackgroundColor,
    required this.borderColor,
    required this.hintColor,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      child: Column(
        children: [
          BuildTextField(
            controller: TextEditingController(),
            label: 'First Name',
            icon: Icons.person,
            textColor: textColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            borderColor: borderColor,
            hintColor: hintColor,
            labelColor: labelColor,
          ),
          const SizedBox(height: 16),
          BuildTextField(
            controller: TextEditingController(),
            label: 'Last Name',
            icon: Icons.person_outline,
            textColor: textColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            borderColor: borderColor,
            hintColor: hintColor,
            labelColor: labelColor,
          ),
          const SizedBox(height: 16),
          BuildTextField(
            controller: TextEditingController(),
            label: 'Email',
            icon: Icons.email,
            textColor: textColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            borderColor: borderColor,
            hintColor: hintColor,
            labelColor: labelColor,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          BuildTextField(
            controller: TextEditingController(),
            label: 'Message',
            icon: Icons.message,
            textColor: textColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            borderColor: borderColor,
            hintColor: hintColor,
            labelColor: labelColor,
            maxLines: 5,
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                backgroundColor: Colors.transparent,
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: const Text(
                    'Send Message',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
