import 'package:get/get.dart';

class ScreenUtils {
  ScreenUtils._();
  static ScreenUtils? _instance;
  static ScreenUtils instance() {
    if (_instance == null) {
      _instance = ScreenUtils._();
    }
    return _instance!;
  }

  bool checkIfTablet() {
    double screenWidth = Get.mediaQuery.size.shortestSide;
    return screenWidth > 600;
  }
}
