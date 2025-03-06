import 'package:get/get.dart';

import '../../../Shared/Caches/user_cache.dart';

class UnAuthorizedHandler {
  UnAuthorizedHandler._();
  static final instance = UnAuthorizedHandler._();

  handle() {
    if ((UserCache.instance.isLogin ?? false)) {
      // Get.offAll(LoginPage());
      // Get.put(LogoutController()).logout();
    }
  }
}
