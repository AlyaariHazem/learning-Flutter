// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({super.key});

  @override
  _AnnouncementsScreenState createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen> {
  final List<String> _announcements = [
    "Math exam on Thursday.",
    "Submit assignments by Monday.",
    "Parent-teacher meeting next week.",
  ];

  void _addAnnouncement(String announcement) {
    setState(() {
      _announcements.add(announcement);
    });
  }

  void _editAnnouncement(int index, String newAnnouncement) {
    setState(() {
      _announcements[index] = newAnnouncement;
    });
  }

  void _deleteAnnouncement(int index) {
    setState(() {
      _announcements.removeAt(index);
    });
  }

  void _showAddAnnouncementDialog() {
    final TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Announcement'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Enter announcement'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final text = controller.text.trim();
                if (text.isNotEmpty) {
                  _addAnnouncement(text);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _showEditAnnouncementDialog(int index) {
    final TextEditingController controller =
        TextEditingController(text: _announcements[index]);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Announcement'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Update announcement'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final text = controller.text.trim();
                if (text.isNotEmpty) {
                  _editAnnouncement(index, text);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAnnouncementList() {
    if (_announcements.isEmpty) {
      return const Center(child: Text('No announcements.'));
    }
    return ListView.builder(
      itemCount: _announcements.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(_announcements[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.blueGrey),
                  onPressed: () => _showEditAnnouncementDialog(index),
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _deleteAnnouncement(index),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE0E0E0),
        title: const Text('Announcements',
        style: TextStyle(color: Color.fromARGB(255, 44, 42, 42)),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: _showAddAnnouncementDialog,
              icon: const Icon(Icons.add),
              label: const Text('Add Announcement'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(child: _buildAnnouncementList()),
          ],
        ),
      ),
    );
  }
}
