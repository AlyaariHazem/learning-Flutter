// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth_provider.dart';

// class DrawerMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);

//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(color: Colors.blueGrey),
//             child: Text(
//               'Menu',
//               style: TextStyle(color: Colors.white, fontSize: 24),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.checklist),
//             title: const Text('Attendance'),
//             onTap: () {
//               Navigator.pushNamed(context, '/attendance');
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.announcement),
//             title: const Text('Announcements'),
//             onTap: () {
//               Navigator.pushNamed(context, '/announcements');
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.image),
//             title: const Text('Gallery'),
//             onTap: () {
//               Navigator.pushNamed(context, '/gallery');
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.people_alt_outlined),
//             title: const Text('Students'),
//             onTap: () {
//               Navigator.pushNamed(context, '/students');
//             },
//           ),
//           const Divider(),
//           ListTile(
//             leading: const Icon(Icons.logout),
//             title: const Text('Logout'),
//             onTap: () async {
//               await authProvider.logout();
//               Navigator.pushReplacementNamed(context, '/login');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
