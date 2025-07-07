class UserModel{
  String? userId;
  String? socialId;
  String? uuid;
  String? fullName;
  String? email;
  String? phoneNumber;
  String? address;
  String? avatar;
  String? clastLogin;
  bool? isActive;
  int? typeUser;// 1 account,2 social
  String? deviceToken;
  String? deviceName;
  String? deviceId;
  int? deviceType;
  UserModel({
    this.userId,
    this.socialId,
    this.uuid,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.address,
    this.avatar,
    this.deviceToken,
    this.deviceName,
    this.deviceType,
    this.deviceId,
    this.clastLogin,
    this.isActive,
    this.typeUser
  });
  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId']??'';
    socialId = json['socialId']??'';
    uuid = json['uuid']??'';
    fullName = json['fullName']??'';
    email = json['email']??'';
    phoneNumber = json['phoneNumber']??'';
    address = json['address']??'';
    avatar = json['avatar']??'';
    clastLogin = json['clastLogin']??'';
    isActive = json['isActive']??false;
    typeUser = json['typeUser']??'';
    deviceToken = json['deviceToken']??'';
    deviceName = json['deviceName']??'';
    deviceType = json['deviceType']??1;
    deviceId = json['deviceId']??'';
  }
  Map<String, dynamic> saveJson(){
    final Map<String, dynamic> data = <String, dynamic>{};

    if(uuid!=null){
      data['uuid'] = uuid;
    }
    if(userId!=null){
      data['userId'] = userId;
    }
    if(fullName!=null){
      data['fullName'] = fullName;
    }
    if(socialId!=null){
      data['socialId'] = socialId;
    }
    return data;
  }

  @override
  String toString() {
    return '{userId: $userId, socialId: $socialId, uuid: $uuid, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, address: $address, avatar: $avatar, clastLogin: $clastLogin, isActive: $isActive, typeUser: $typeUser, deviceToken: $deviceToken, deviceName: $deviceName, deviceType: $deviceType}';
  }


}