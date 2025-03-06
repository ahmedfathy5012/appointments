import 'dart:ui';


enum AppType { single, shared }

class AppInfoKeys {
  static const String baseUrl =
      "https://portal.learnoapp.net/public/student/api/";
  // TODO Empty it if not app for personal (lecturer/center)
  static const String apiKey =
        '\$2y\$10\$VQcF4kYGEuS/zG5fL3aBJu65xa5AXqYWCD1I6067CeMvyhzLLj4Qe';
      // '\$2y\$10OZxl2qHnJMPtEElsf77gK0fg6YomN1bcO5PiIdnCJP';
  static const String appName = 'New Cambridge';
  static const String appNameNumber = 'learno00104';

  static const int androidLocalVersion = 4;
  static const int iosLocalVersion = 4;
  static const int windowsLocalVersion = 1;
  static const int macLocalVersion = 1;

  static const String androidVersion = '1.0.2';
  static const String androidBuildNumber = '10';
  static const String iosVersion = '1.0.6';
  static const String iosBuildNumber = '14';

  // TODO change it if not app for personal (lecturer/center)
  static const AppType appType = AppType.single;
  static const Color mainColor = const Color(0xff7B0000);
  static const String packageName = 'com.zaidia.papers';
  static const String bundleName = 'com.zaidia.papers';
  static const String androidIconPath = '@mipmap/ic_launcher';
  static const String fontFamily = "urw_din";
  static const String fontFamilySecondary = "";
  static const String appIcon = "assets/images/logo.png";
  static const String googleAndroidApiKey =
      'AIzaSyBRYY1f0-H4MfWk_N3NC_pARh4lSx9ZZIw';
  static const String googleIosApiKey =
      'AIzaSyDHNClgtIGH_SUbg-zTSmzFrUoMjZKydFI';
  static const String playStoreUrl =
      'https://play.google.com/store/apps/details?id=$packageName';
  static const String appStoreUrl =
      'https://apps.apple.com/us/app/$bundleName/id';
  static const String appID = 'com.learnoapp.$appNameNumber';
  static const String mapKey = '';
  static const String FCMToken = '';
  static const String appStoreID = '';

  static const String googleAccount = 'learnowork001@gmail.com';
  static const String firebaseProject = 'amacademy';
  // static const VerifyType verifyType = VerifyType.withoutVerify;

  static const String imageExample =
      "https://images.pexels.com/photos/5498042/pexels-photo-5498042.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load";
  static const String textExample =
      "هذا النص هو مثال لنص الوصف للكورس يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص الوصف للكورس يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، ، لقد تم توليد هذا النص من مولد النص العربى، ";
}

ApiType get apiType => ApiType.live;
ApiType get apiParentType => ApiType.live;
ApiType get appMode => ApiType.live;
SplashType get splashType => SplashType.logo;

enum ApiType { live, test }
enum SplashType { logo, cover }

// 0 . handle this file by app info
// 1 . change package name by run  : flutter pub run change_app_package_name:main com.learnoapp.learno
// 2 . put app logo 1024 * 1024 in "assets/app_icon/ic_launcher.png"
// 3 . change app logo by run : flutter pub run flutter_launcher_icons
// 4 . add this file in  "lib/app_info_keys.dart"
// 5 . put google-services.json file in "android/app"
// 6 . change google key in "android/app/src/main/AndroidManifest.xml" to googleAndroidApiKey from this file

// ios
// 7 . put GoogleService-Info.plist file in "ios/runner" by clicking add to runner from xcode
// 8 . copy REVERSED_CLIENT_ID from GoogleService-Info.plist to URL Schemes from info tap in xcode
// 8 . change bundle name from xcode <identifire>
// 9 . change google key in "ios/runner/AppDelegate.swift" to googleIosApiKey from this file

// if this for first time
// 1 . create firebase for android
// 2 . create firebase for ios
// 3 . enable Maps SDK for Android
// 4 . enable Maps SDK for Ios

// $2y$10$aUgZfbuLQ10AWAg6FEa9duoXn8caV4a6cqCAt9gx9HjOItFX4xfh.
// 01064695026
// amacademy@gmail.com
// amacademy
