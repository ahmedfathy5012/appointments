import 'package:mobile/src/Base/Core/Constants/Strings/app_strings.dart';
import 'package:get/get.dart';

import '../../../../app_info_keys.dart';

class ApiKeyHandler {
  ApiKeyHandler._();
  static final instance = ApiKeyHandler._();
  // Organization? _organization = OrganizationCache.instance.getOrganization();
  static const String defaultApiKey =
      '\$2y\$10OZxl2qHnJMPtEElsf77gK0fg6YomN1bcO5PiIdnCJP';

  String getApiKey() {
    return '';
  }

  int appVersion() {
    String os = getOS;
    switch (os) {
      case "ios":
        return AppInfoKeys.iosLocalVersion;
      case "android":
        return AppInfoKeys.androidLocalVersion;
      case "mac":
        return AppInfoKeys.macLocalVersion;
      case "windows":
        return AppInfoKeys.windowsLocalVersion;
      default:
        return AppInfoKeys.iosLocalVersion;
    }
  }
}
