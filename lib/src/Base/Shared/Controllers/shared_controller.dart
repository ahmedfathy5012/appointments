import 'package:mobile/src/Base/Super/Controllers/Resources/get/get_controller_interface.dart';

class   ShardController extends GetControllerInterface<void> {
  bool isTTSStart = false;

  void startTTS() {
    isTTSStart = true;
    update();
  }

  void stopTTS() {
    isTTSStart = false;
    update();
  }


}