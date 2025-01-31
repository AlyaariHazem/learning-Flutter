// import 'package:firebase_messaging/firebase_messaging.dart';

// class NotificationService {
//   final FirebaseMessaging _fcm = FirebaseMessaging.instance;

//   Future<void> initialize() async {
//     // Request permissions for iOS
//     NotificationSettings settings = await _fcm.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       print('User granted permission');
//     } else {
//       print('User declined or has not accepted permission');
//     }

//     // Handle foreground messages
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       print('Received a message in the foreground!');
//       // Handle the message
//     });

//     // Handle background and terminated state messages
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   }

//   static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//     // Handle background message
//     print('Handling a background message: ${message.messageId}');
//   }

//   Future<String?> getToken() async {
//     return await _fcm.getToken();
//   }
// }
