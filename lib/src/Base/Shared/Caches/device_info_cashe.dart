import 'package:mobile/src/Base/Core/Services/Storage/src/storage_constants.dart';
import 'package:mobile/src/Base/Core/Services/Storage/storage_service.dart';

class DeviceInfoCash {
  DeviceInfoCash._();

  static final instance = DeviceInfoCash._();

  final _deviceStorage = StorageService<String>();

  void setDeviceId({String deviceID = ""}) {
    _deviceStorage.save(deviceId, value: deviceID);
  }

  String? get deviceID => _deviceStorage.read(deviceId, defaultValue: '');
}
