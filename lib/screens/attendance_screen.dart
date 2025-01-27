import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  final List<String> students = [
    'Student 1',
    'Student 2',
    'Student 3',
    'Student 4',
    'Student 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(students[index]),
                trailing: AttendanceToggle(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AttendanceToggle extends StatefulWidget {
  const AttendanceToggle({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AttendanceToggleState createState() => _AttendanceToggleState();
}

class _AttendanceToggleState extends State<AttendanceToggle> {
  bool isPresent = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isPresent,
      onChanged: (value) {
        setState(() {
          isPresent = value;
        });
      },
      activeColor: Colors.green,
      inactiveThumbColor: Colors.red,
    );
  }
}
