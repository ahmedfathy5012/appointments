import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/App/app_initializer.dart';
import 'package:mobile/src/Base/Core/Services/Firebase/FCM/local_notification_service.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/Error/app_error_builder.dart';
import 'package:mobile/src/my_app.dart';

// start background
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  LocalNotificationService.launchNotification(message: message);
}

// end background
void main() async {
  await AppInitializer.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  ErrorWidget.builder =
      (FlutterErrorDetails details) => AppErrorBuilder(details);

  runApp(
      const MyApp()
  );
}

//
