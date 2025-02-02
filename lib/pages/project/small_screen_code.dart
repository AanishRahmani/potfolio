import 'package:flutter/material.dart';
import 'package:person_info_site/pages/project/project_card.dart';
import 'package:person_info_site/tools/small_screen_nav.dart';

class SmallScreenCode extends StatelessWidget {
  const SmallScreenCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PROJECTS',
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open the drawer
            },
          ),
        ),
      ),
      drawer:
          const SmallScreenNav(), // Custom side navigation for small screens
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //add space if needed
                ProjectCard(
                  heading: 'TODO',
                  imagePath: 'assets/todoFULLSTACK.png',
                  githubUrl: 'https://github.com/AanishRahmani/todo-full-stack',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'This project is a full-stack to-do application built\nusing Django for the backend  and Flutter for\nthe frontend. The app allows users to efficiently\nmanage their tasks by creating, updating, and\ndeleting to-dos.'),
                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Blog App',
                  imagePath: 'assets/blogapp.png',
                  githubUrl: 'https://github.com/AanishRahmani/blogApp',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'This project is a fully functional blog application\nbuilt using Flutter for the frontend and Supabase\nas the backend. The app provides a seamless\nblogging experience with user authentication\nimage storage, and real-time content updates.'),

                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Expense Tracker',
                  imagePath: 'assets/exptracker.jpeg',
                  githubUrl: 'https://github.com/AanishRahmani/expenseTracker',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'This project is a lightweight expense tracker app\n built using Flutter with SharedPreferences for local \ndata storage. The app helps users efficiently\n manage their daily expenses without requiring\n an internet connection.'),

                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Portfolio',
                  imagePath: 'assets/portfolio.png',
                  githubUrl: 'https://github.com/AanishRahmani/potfolio',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'This project is a responsive portfolio website built\n using Flutter, designed to showcase personal projects\n, skills, and experiences in an interactive and visually\nappealing way.'),
                // Add more ProjectCards directly
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'TODO CLI',
                  imagePath: 'assets/todoCLI.png',
                  githubUrl: 'https://github.com/AanishRahmani/todoCLI-golang-',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'A To-Do CLI Application is a command-line tool that\nallows users to manage their tasks by performing\nbasic CRUD(Create, Read, Update, Delete) operations,\nenabling them to add new tasks, view existing\nones, update task details,and remove tasks, all\nfrom the terminal.'),

                // Add more ProjectCards directly
                SizedBox(height: 20),
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'TCP server',
                  imagePath: 'assets/server.png',
                  githubUrl: 'https://github.com/AanishRahmani/TCPserver',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'A TCP Echo Server in Go is a simple network application\nthat accepts incoming client connections over the\nTCP protocol, reads the data sent by the client, and\nsends the same data back as a response (echo).\nUsing Go\'s concurrency features, the server handles\nmultiple connections simultaneously, making it\nefficient and scalable. '),

                // Add more ProjectCards directly
                SizedBox(height: 20),
                SizedBox(height: 20),
                ProjectCard(
                  heading: 'Web Socket',
                  imagePath: 'assets/websocket.png',
                  githubUrl: 'https://github.com/AanishRahmani/webSocket',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'This WebSocket server in Go supports multiple clients,\nallowing them to maintain an open, persistent connection.\nWhen a client sends a message, the server broadcasts\nit to all other connected clients, enabling real-time\n communication between users.'),

                // Add more ProjectCards directly
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
