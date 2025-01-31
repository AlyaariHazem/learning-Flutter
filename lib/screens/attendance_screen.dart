// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  final List<String> _students = [
    'Hazem',
    'Qusay',
    'Abdulkarim',
    'Ahmed',
    'Salah'
  ];
  final Map<String, bool> _attendance = {};

  @override
  void initState() {
    super.initState();
    for (var student in _students) {
      _attendance[student] = false;
    }
  }

  void _toggleAttendance(String student) {
    setState(() {
      _attendance[student] = !_attendance[student]!;
    });
  }

  Widget _buildAttendanceList() {
    return ListView.builder(
      itemCount: _students.length,
      itemBuilder: (context, index) {
        final student = _students[index];
        return ListTile(
          title: Text(student),
          trailing: Checkbox(
            value: _attendance[student],
            onChanged: (value) => _toggleAttendance(student),
          ),
        );
      },
    );
  }

  void _submitAttendance() {
    // Implement attendance submission logic, e.g., saving to a database
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Attendance Submitted'),
        content: const Text('The attendance has been successfully submitted.'),
        actions: [
          TextButton(
            child: const Text('Okay'),
            onPressed: () => Navigator.of(ctx).pop(),
          ),
        ],
      ),
    );
    // Optionally, reset attendance
    setState(() {
      _attendance.updateAll((key, value) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE0E0E0),
        title: const Text('Attendance',
        style: TextStyle(color: Color.fromARGB(255, 44, 42, 42)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: _buildAttendanceList()),
            ElevatedButton(
              onPressed: _submitAttendance,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Submit Attendance'),
            ),
          ],
        ),
      ),
    );
  }
}
