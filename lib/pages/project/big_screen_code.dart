import 'package:flutter/material.dart';
import 'package:person_info_site/pages/project/project_card.dart';
import 'package:person_info_site/tools/upper_container.dart';

class BigScreenCode extends StatelessWidget {
  const BigScreenCode({super.key, this.onThemeToggle, this.isDarkMode});

  final Function(bool)? onThemeToggle;
  final bool? isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 100), // Space below UpperContainer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          'This project is a full-stack to-do\napplication built using Django for the backend\nand Flutter for the frontend. The app allows\nusers to efficiently manage their tasks by creating,\nupdating, and deleting to-dos.'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'TODO',
                        imagePath: 'assets/todoFULLSTACK.png',
                        githubUrl:
                            'https://github.com/AanishRahmani/todo-full-stack',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          'This project is a fully functional blog\napplication built using Flutter for the frontend and\nSupabase as the backend. The app\nprovides a seamless blogging experience with\nuser authentication, image storage,\nand real-time content updates.'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Blog App',
                        imagePath: 'assets/blogapp.png',
                        githubUrl: 'https://github.com/AanishRahmani/blogApp',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          'This project is a lightweight expense tracker app\nbuilt using Flutter with SharedPreferences for local\ndata storage. The app helps users efficiently\nmanage their daily expenses without requiring\nan internet connection.'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Expense Tracker',
                        imagePath: 'assets/exptracker.jpeg',
                        githubUrl:
                            'https://github.com/AanishRahmani/expenseTracker',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          'This project is a responsive portfolio website built\nusing Flutter, designed to showcase personal projects\nskills, and experiences in an interactive and visually\nappealing way.'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Portfolio',
                        imagePath: 'assets/portfolio.png',
                        githubUrl: 'https://github.com/AanishRahmani/potfolio',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          'A To-Do CLI Application is a command-line tool that\nallows users to manage their tasks by performing\nbasic CRUD(Create, Read, Update, Delete) operations,\nenabling them to add new tasks, view existing\nones, update task details,and remove tasks, all\nfrom the terminal.'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'TODO CLI',
                        imagePath: 'assets/todoCLI.png',
                        githubUrl:
                            'https://github.com/AanishRahmani/todoCLI-golang-',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          'A TCP Echo Server in Go is a simple network application\nthat accepts incoming client connections over the\nTCP protocol, reads the data sent by the client, and\nsends the same data back as a response (echo).\nUsing Go\'s concurrency features, the server handles\nmultiple connections simultaneously, making it\nefficient and scalable. '),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'TCP server',
                        imagePath: 'assets/server.png',
                        githubUrl: 'https://github.com/AanishRahmani/TCPserver',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                          'This WebSocket server in Go supports multiple clients,\nallowing them to maintain an open, persistent connection.\nWhen a client sends a message, the server broadcasts\nit to all other connected clients, enabling real-time\n communication between users.'),
                      Spacer(
                        flex: 2,
                      ),
                      ProjectCard(
                        heading: 'Web Socket',
                        imagePath: 'assets/websocket.png',
                        githubUrl: 'https://github.com/AanishRahmani/webSocket',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: UpperContainer(
              onThemeToggle: onThemeToggle ?? (_) {},
              isDarkMode: isDarkMode ?? true,
              heading: 'PROJECTS',
            ),
          ),
        ],
      ),
    );
  }
}
