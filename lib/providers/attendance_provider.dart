import 'package:flutter/material.dart';
import '../models/student.dart';

class AttendanceProvider with ChangeNotifier {
  final List<Student> _students = [];
  final Map<String, bool> _attendance = {};

  List<Student> get students => _students;

  Map<String, bool> get attendance => _attendance;

  void addStudent(Student student) {
    _students.add(student);
    _attendance[student.id] = false;
    notifyListeners();
  }

  void toggleAttendance(String studentId) {
    if (_attendance.containsKey(studentId)) {
      _attendance[studentId] = !_attendance[studentId]!;
      notifyListeners();
    }
  }

  // Additional methods like fetching from API can be added
}
