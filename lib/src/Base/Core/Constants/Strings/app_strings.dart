// import 'dart:io';
//
// import 'package:papers/app_info_keys.dart';
// // TODO 2 : Add app name and app description here
//
// // class AppInfoKeys {
// //   AppInfoKeys._();
// //   static const String appName = '${AppInfoKeys.appName}';
// //   static const String appDescription = 'flutter base';
// //   static const String appLegalese = 'Ⓒ2022 ${AppInfoKeys.appName} ';
// //   static const String androidIconPath = '@mipmap/ic_launcher';
// //   static const String fontFamily = "Cairo";
// //   static const String fontFamilySecondary = "";
// //   static const String appIcon = "assets/images/logo.png";
// //   static const String appAndroidVersion = AppInfoKeys.androidVersion;
// //   static const String androidBuildNumber = AppInfoKeys.androidBuildNumber;
// //   static const String appIOSVersion = AppInfoKeys.iosVersion;
// //   static const String iosVersion = AppInfoKeys.iosVersion;
// //   static const String appVersion = '1.0.0';
// //   static const String appBuildNumber = '1';
// //   static const String _appStoreId = 'com.crazyidea.$appName';
// //   static const int androidLocalVersion = AppInfoKeys.androidLocalVersion;
// //   static const int iosLocalVersion = AppInfoKeys.iosLocalVersion;
// //   static const String _playStoreUrl = 'https://play.google.com/store/apps/details?id=$appName';
// //   static const String _appStoreUrl = 'https://apps.apple.com/us/app/$appName/id$_appStoreId';
// //   static const String _appID = 'com.crazyidea.$appName';
// //   static const String _mapKey = '';
// //   static const String _FCMToken = '';
// //   static const String appStoreID='';
// //
// //   static const int androidVersion = 9;
// //   static const int iosVersion = 1;
// //
// //   static const String apiKey = "\$2y\$10OZxl2qHnJMPtEElsf77gK0fg6YomN1bcO5PiIdnCJP";
// //   static const String imageExample = "https://images.pexels.com/photos/5498042/pexels-photo-5498042.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load";
// //   static const String textExample = "هذا النص هو مثال لنص الوصف للكورس يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص الوصف للكورس يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، ، لقد تم توليد هذا النص من مولد النص العربى، ";
// //
// //   static const VerifyType verifyType = VerifyType.withoutVerify;
// //
// // }
//
import 'dart:io';

import 'package:mobile/app_info_keys.dart';

String get getOS => Platform.operatingSystem;

String get ios => "ios";

String get android => "android";

String get mac => "mac";

String get windows => "windows";

// ApiType get apiType => ApiType.test;
// ApiType get apiType => ApiType.live;

// enum ApiType { live, test }

Future<void> checkDelay() async {
  if (apiType == ApiType.test) {
    await Future.delayed(const Duration(seconds: 1));
  }
}

Future<void> checkParentDelay() async {
  if (apiParentType == ApiType.test) {
    await Future.delayed(const Duration(seconds: 1));
  }
}

enum VerifyType {
  withVerify,
  withoutVerify,
}

String kDummyText =
    'هذا النص هو مثال لنص الوصف للكورس يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص الوصف للكورس يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، ، لقد تم توليد هذا النص من مولد النص العربى، ';
