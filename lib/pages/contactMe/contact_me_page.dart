// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:person_info_site/tools/upper_container.dart'; // Assuming this is where UpperContainer is defined

class ContactMePage extends StatefulWidget {
  final Function(bool)? onThemeToggle;
  final bool? isDarkMode;

  const ContactMePage({super.key, this.onThemeToggle, this.isDarkMode});

  @override
  _ContactMePageState createState() => _ContactMePageState();
}

class _ContactMePageState extends State<ContactMePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  // Function to send the form data to the backend
  Future<void> _sendMessage() async {
    if (_formKey.currentState!.validate()) {
      final String firstName = _firstNameController.text;
      final String lastName = _lastNameController.text;
      final String email = _emailController.text;
      final String message = _messageController.text;

      try {
        final url = Uri.parse('http://127.0.0.1:5000/contact');
        final response = await http.post(
          url,
          body: {
            'first_name': firstName,
            'last_name': lastName,
            'email': email,
            'message': message,
          },
        );

        if (response.statusCode == 200) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Message Sent Successfully!')),
          );
          _formKey.currentState!.reset();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to send message. Try again.')),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: Unable to connect to server.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodySmall?.color;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final borderColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black54; // Adaptive border color
    final labelColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black87; // Adaptive label color
    final hintColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white70
        : Colors.black54; // Adaptive hint text color

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            UpperContainer(
              heading: 'CONTACT ME',
              onThemeToggle: widget.onThemeToggle ?? (_) {},
              isDarkMode: widget.isDarkMode ?? true,
            ),
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                      maxWidth: 400), // Set the max width for the box
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color:
                          scaffoldBackgroundColor, // Adaptive background color
                      border: Border.all(color: borderColor, width: 2),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: borderColor.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize
                          .min, // Ensure the box is only as big as the fields
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              _buildTextField(
                                controller: _firstNameController,
                                label: 'First Name',
                                icon: Icons.person,
                                textColor: textColor,
                                scaffoldBackgroundColor:
                                    scaffoldBackgroundColor,
                                borderColor: borderColor,
                                hintColor: hintColor, // Pass adaptive hintColor
                                labelColor:
                                    labelColor, // Pass adaptive labelColor
                              ),
                              const SizedBox(height: 16),
                              _buildTextField(
                                controller: _lastNameController,
                                label: 'Last Name',
                                icon: Icons.person_outline,
                                textColor: textColor,
                                scaffoldBackgroundColor:
                                    scaffoldBackgroundColor,
                                borderColor: borderColor,
                                hintColor: hintColor, // Pass adaptive hintColor
                                labelColor:
                                    labelColor, // Pass adaptive labelColor
                              ),
                              const SizedBox(height: 16),
                              _buildTextField(
                                controller: _emailController,
                                label: 'Email',
                                icon: Icons.email,
                                textColor: textColor,
                                scaffoldBackgroundColor:
                                    scaffoldBackgroundColor,
                                borderColor: borderColor,
                                hintColor: hintColor, // Pass adaptive hintColor
                                labelColor:
                                    labelColor, // Pass adaptive labelColor
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  if (!RegExp(r'\S+@\S+\.\S+')
                                      .hasMatch(value)) {
                                    return 'Please enter a valid email';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              _buildTextField(
                                controller: _messageController,
                                label: 'Message',
                                icon: Icons.message,
                                textColor: textColor,
                                scaffoldBackgroundColor:
                                    scaffoldBackgroundColor,
                                borderColor: borderColor,
                                hintColor: hintColor, // Pass adaptive hintColor
                                labelColor:
                                    labelColor, // Pass adaptive labelColor
                                maxLines: 5,
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Colors.pink,
                                        Colors.deepPurple
                                      ], // Gradient from pink to purple
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: _sendMessage,
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 15,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      backgroundColor: Colors
                                          .transparent, // Make background transparent for the gradient
                                    ),
                                    child: const Text(
                                      'Send Message',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required Color? textColor,
    required Color scaffoldBackgroundColor,
    required Color borderColor,
    required Color hintColor,
    required Color labelColor,
    String? Function(String?)? validator,
    int maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(color: textColor ?? Colors.black), // Adaptive text color
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: labelColor), // Adaptive label color
        hintText: 'Enter your $label',
        hintStyle: TextStyle(color: hintColor), // Adaptive hint text color
        prefixIcon: Icon(icon, color: Colors.deepPurple),
        filled: true,
        fillColor: scaffoldBackgroundColor, // Adaptive background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
              BorderSide(color: borderColor, width: 1), // Adaptive border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
              color: Colors.deepPurple,
              width: 2), // Focused deep purple border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
              BorderSide(color: borderColor, width: 1), // Adaptive border color
        ),
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter $label';
            }
            return null;
          },
    );
  }
}
