import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile/src/Features/reminder/core/helpers/dataBaseHelper.dart';
import 'package:mobile/src/Features/reminder/core/services/notification_service.dart';

import '../Libraries/snap/snap.dart';
import '../NetworkStructure/Networking/network_service.dart';
import '../Services/Firebase/FCM/fcm_service.dart';
import '../Services/Firebase/FCM/local_notification_service.dart';
import '../Services/Storage/storage_service.dart';
import 'app_layout.dart';
import 'http_client.dart';

/// Contains All The Methods needed to be run before MyApp Compiles
class AppInitializer {
  AppInitializer._();
  static final LocalNotificationService _localNotificationService =
      LocalNotificationService();
  static Future<void> initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    HttpOverrides.global = MyHttpOverrides();
    // Helper.screenShot.secureApp();
    await StorageService().init();
    await GetStorage('organization').initStorage;

    // await Firebase.initializeApp();
    NetworkService().init();

    if (defaultTargetPlatform == TargetPlatform.android) {
      // AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }

    await AppLayout.fixedOrientation();

    NotificationService().initNotifications();

    DatabaseHelper.instance.initDatabase();
    /// * On notification success * ///

    // End Handle FCM_Service config
    GoBuilder().initAppRouter(
      config: PlatformConfig(
          // android:   CustomPageRouterCreator(parentTransition: TransitionType.fade)
          ),
    );
  }
}
