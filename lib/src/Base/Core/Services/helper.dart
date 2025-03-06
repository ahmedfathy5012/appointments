import 'package:mobile/src/Base/Core/Services/Launcher/launcher_service.dart';
import 'package:mobile/src/Base/Core/Services/MediaPicker/imports_media_picker.dart';
import 'package:mobile/src/Base/Core/Services/QR/qr_service.dart';
import 'package:mobile/src/Base/Core/Services/Share/share_service.dart';

/// A place where you have access to all services .
class Helper {
  Helper._();
  // static LocalAudioService localAudio = LocalAudioService.instance;

  // static NetworkConnectionService connectivity =
  //     NetworkConnectionService.instance;

  // static GeolocationServices location = GeolocationServices.instance;

  static LauncherServices launcher = LauncherServices.instance;

  static MediaPickerService media = MediaPickerService.instance;

  static QrService qr = QrService();

  // static MapStyleService mapStyle = MapStyleService.instance;

  static ShareService share = ShareService.instance;

  // static AppRateService appRare = AppRateService.instance;

  // static ImageCropperService imageCropper = ImageCropperService.instance;

  // static FlutterBluetoothService bluetooth = FlutterBluetoothService.instance;

  // static ScreenShotService  screenShot = ScreenShotService.instance;
}
