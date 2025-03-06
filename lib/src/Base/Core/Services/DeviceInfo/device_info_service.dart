import 'dart:io';

import 'package:mobile/src/Base/Core/Services/random_genrator_service.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Caches/device_info_cashe.dart';

class DeviceInfoService {
  DeviceInfoService._();

  static final DeviceInfoService instance = DeviceInfoService._();

  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  Future<String> generateDeviceID() async {
    String deviceID = await getDeviceId();
    String id = deviceID +
        DateTime.now().toString() +
        RandomGeneratorService.instance.generateRandomString(
            RandomGeneratorService.instance.generateRandomNumber(4));
    DeviceInfoCash.instance.setDeviceId(deviceID: id);
    return id;
  }

  Future<String> readDeviceID() async {
    String? deviceStorageID = DeviceInfoCash.instance.deviceID;
    if (deviceStorageID == null || deviceStorageID.isEmpty) {
      String? deviceID = DeviceInfoCash.instance.deviceID;
      if (deviceID != null && deviceID.isEmpty) {
        await generateDeviceID();
      }
      deviceStorageID = DeviceInfoCash.instance.deviceID;
    }
    return deviceStorageID ?? '';
  }

  /// [getDeviceId] returns the device info
  Future<String> getDeviceId() async {
    String deviceId;
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      // printDM('Running on ${androidInfo.model} ${androidInfo.id} ${androidInfo.type}'); // e.g. "Moto G (4)"
      deviceId =
          "${androidInfo.model}-${androidInfo.id}-${androidInfo.type}-${androidInfo.device}}";
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      deviceId = iosInfo.identifierForVendor.toString();
      printDM('Running on ${iosInfo.identifierForVendor}'); // e.g. "iPod7,1"
    } else {
      deviceId = "Unknown Device Id";
    }
    return deviceId;
  }

  /// Get the AndroidOverscrollIndicator from the device info plugin
  Future<AndroidOverscrollIndicator> get androidScrollIndicator async {
    final androidInfo = await _deviceInfo.androidInfo;
    final sdkVersion = androidInfo.version.sdkInt;
    final androidOverscrollIndicator = sdkVersion > 30
        ? AndroidOverscrollIndicator.stretch
        : AndroidOverscrollIndicator.glow;
    return androidOverscrollIndicator;
  }
}
