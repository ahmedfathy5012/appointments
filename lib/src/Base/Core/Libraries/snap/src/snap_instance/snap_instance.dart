import 'package:get/get.dart';

import '../../snap.dart';


extension SnapInstance on SnapInterface {
  T put<T>(T value){
    return Get.put<T>(value);
  }
}