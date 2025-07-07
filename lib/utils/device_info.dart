import 'dart:io';

import 'package:expenditure/model/device_info_model.dart';
import 'package:flutter/services.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfo{
  DeviceInfoModel? deviceInfoModel;

  static Future<DeviceInfoModel> getDeviceInfo() async {
    String? deviceName;
    String? deviceVersion;
    String? deviceOS;
    String? identifier;
    int? devicePlatform;
    final  deviceInfoPlugin = DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        final build = await deviceInfoPlugin.androidInfo;
       deviceName = build.model;
        deviceVersion = build.version.release.toString();
        deviceOS =build.device;
        identifier = build.id;  //UUID for Android

          devicePlatform = 1;

      }
      else if (Platform.isIOS) {
        final data = await deviceInfoPlugin.iosInfo;
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        identifier = data.identifierForVendor;  //UUID for iOS
        deviceOS =data.systemName;
        devicePlatform = 2;

      }
    } on PlatformException {
      // print('Failed to get platform version');
      return DeviceInfoModel(name: '', version: '', identifier: '', deviceType: 0,deviceOS: '');
    }

    return DeviceInfoModel(name: deviceName, version: deviceVersion, identifier: identifier, deviceType: devicePlatform,deviceOS: deviceOS, devicePlatform: devicePlatform);
  }
}