import 'package:mobile/src/Base/Core/Constants/Strings/app_strings.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:mobile/src/Base/Core/handlers/api_key_handlers.dart';

import '../../../../../../../app_info_keys.dart';
import '../../../../../Shared/Caches/user_cache.dart';

class HeaderHandler {
  HeaderHandler._();

  static HeaderHandler instance = HeaderHandler._();

  // final AccountHolderController _accountHolder = Get.find<AccountHolderController>();

  /// set header
  Map<String, String> setHeaders(bool isAuth) {
    // String token = "\$2y\$10\$FPFzlddfN3DEGczvnAKYPu8U/yys8Rlbc3DQoTE7ZC1PDDK3RWtoK";
    String token = '';
    if (isAuth) {
      // token = _accountHolder.apiToken;
      // token = UserCache.instance.getUser()!.apiToken??'';
      token = '';
    }

    printDM('Ali Api Key: ${ApiKeyHandler.instance.getApiKey()}');
    return {
      // 'Accept-Language': Utils.cachedLocale.languageCode,
      'Accept-Language': 'ar',
      'app_version': ApiKeyHandler.instance.appVersion().toString(),
      'os': getOS,
      'is_shared': AppInfoKeys.appType == AppType.shared ? '1' : '0',
      // 'api_key': '\$2y\$10OZxl2qHnJMPtEElsf77gK0fg6YomN1bcO5PiIdnCJP',
      'api_key': ApiKeyHandler.instance.getApiKey(),
      if (isAuth && (token != "")) 'Authorization': 'Bearer $token'
    };
  }
}
