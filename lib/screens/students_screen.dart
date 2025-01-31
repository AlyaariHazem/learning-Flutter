import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  final List<String> _students = [
    'Hazem',
    'Qusay',
    'Abdulkarim',
    'Ahmed',
    'Salah'
  ];

   StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE0E0E0),
        title: const Text('Students',
        style: TextStyle(color: Color.fromARGB(255, 44, 42, 42)),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(_students[index]),
            // Add more details or actions as needed
          );
        },
      ),
    );
  }
}
