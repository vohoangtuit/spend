class DeviceInfoModel {
  String? name;
  String? version;
  String? identifier;
  int? deviceType;
  String? deviceOS;
  int? devicePlatform;

  DeviceInfoModel(
      {this.name,
        this.version,
        this.identifier,
        this.deviceType,
        this.deviceOS,
        this.devicePlatform,
      });

  DeviceInfoModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    version = json['version'];
    identifier = json['identifier'];
    deviceType = json['deviceType'];
    deviceOS = json['deviceOS'];
    devicePlatform = json['devicePlatform'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['version'] = version;
    data['identifier'] = identifier;
    data['deviceType'] = deviceType;
    data['deviceOS'] = deviceOS;
    data['devicePlatform'] = devicePlatform;
    return data;
  }
}
