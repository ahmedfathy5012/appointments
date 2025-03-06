

import '../../Shared/Caches/user_cache.dart';
import '../Services/Storage/src/storage_constants.dart';
import '../Services/Storage/storage_service.dart';
import 'package:get/get.dart';
class AppFlow {
  AppFlow._();
  /// [controlFlow] manipulates the return Screen  ( Called before the app runs or in Splash Screen )
  static Future<void> controlFlow() async {
    bool? isOnBoardingDone = StorageService<bool>().read(stgOnBoarding, defaultValue: false);
    // isOnBoardingDone.read(stgOnBoarding, defaultValue: false);
    // final user = UserCache.instance.getUser();
    // Get.offAll(const BasePage());
    if (isOnBoardingDone??false) {
      // if (user?.isPhoneVerified ?? false) {
      if ( false) {
        // Get.offAll(() => const BasePage());
      } else {
        // Get.offAll(() => const LoginPage());
      }
    } else {
      // Get.offAll(() => const OnBoardingPage());
    }
  }
}