// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $AccountInfoTable extends AccountInfo
    with TableInfo<$AccountInfoTable, AccountInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _socialIdMeta = const VerificationMeta(
    'socialId',
  );
  @override
  late final GeneratedColumn<String> socialId = GeneratedColumn<String>(
    'social_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
    'uuid',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fullNameMeta = const VerificationMeta(
    'fullName',
  );
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
    'full_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phoneNumberMeta = const VerificationMeta(
    'phoneNumber',
  );
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
    'phone_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<String> avatar = GeneratedColumn<String>(
    'avatar',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _clastLoginMeta = const VerificationMeta(
    'clastLogin',
  );
  @override
  late final GeneratedColumn<String> clastLogin = GeneratedColumn<String>(
    'clast_login',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _typeUserMeta = const VerificationMeta(
    'typeUser',
  );
  @override
  late final GeneratedColumn<int> typeUser = GeneratedColumn<int>(
    'type_user',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deviceTokenMeta = const VerificationMeta(
    'deviceToken',
  );
  @override
  late final GeneratedColumn<String> deviceToken = GeneratedColumn<String>(
    'device_token',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deviceNameMeta = const VerificationMeta(
    'deviceName',
  );
  @override
  late final GeneratedColumn<String> deviceName = GeneratedColumn<String>(
    'device_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deviceTypeMeta = const VerificationMeta(
    'deviceType',
  );
  @override
  late final GeneratedColumn<int> deviceType = GeneratedColumn<int>(
    'device_type',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deviceIdMeta = const VerificationMeta(
    'deviceId',
  );
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
    'device_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    socialId,
    uuid,
    userId,
    fullName,
    email,
    phoneNumber,
    address,
    avatar,
    clastLogin,
    isActive,
    typeUser,
    deviceToken,
    deviceName,
    deviceType,
    deviceId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'account_info';
  @override
  VerificationContext validateIntegrity(
    Insertable<AccountInfoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('social_id')) {
      context.handle(
        _socialIdMeta,
        socialId.isAcceptableOrUnknown(data['social_id']!, _socialIdMeta),
      );
    }
    if (data.containsKey('uuid')) {
      context.handle(
        _uuidMeta,
        uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta),
      );
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    if (data.containsKey('full_name')) {
      context.handle(
        _fullNameMeta,
        fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('phone_number')) {
      context.handle(
        _phoneNumberMeta,
        phoneNumber.isAcceptableOrUnknown(
          data['phone_number']!,
          _phoneNumberMeta,
        ),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('avatar')) {
      context.handle(
        _avatarMeta,
        avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta),
      );
    }
    if (data.containsKey('clast_login')) {
      context.handle(
        _clastLoginMeta,
        clastLogin.isAcceptableOrUnknown(data['clast_login']!, _clastLoginMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('type_user')) {
      context.handle(
        _typeUserMeta,
        typeUser.isAcceptableOrUnknown(data['type_user']!, _typeUserMeta),
      );
    }
    if (data.containsKey('device_token')) {
      context.handle(
        _deviceTokenMeta,
        deviceToken.isAcceptableOrUnknown(
          data['device_token']!,
          _deviceTokenMeta,
        ),
      );
    }
    if (data.containsKey('device_name')) {
      context.handle(
        _deviceNameMeta,
        deviceName.isAcceptableOrUnknown(data['device_name']!, _deviceNameMeta),
      );
    }
    if (data.containsKey('device_type')) {
      context.handle(
        _deviceTypeMeta,
        deviceType.isAcceptableOrUnknown(data['device_type']!, _deviceTypeMeta),
      );
    }
    if (data.containsKey('device_id')) {
      context.handle(
        _deviceIdMeta,
        deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountInfoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      socialId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}social_id'],
      ),
      uuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uuid'],
      ),
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
      fullName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}full_name'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      phoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_number'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      avatar: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar'],
      ),
      clastLogin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}clast_login'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      ),
      typeUser: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type_user'],
      ),
      deviceToken: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_token'],
      ),
      deviceName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_name'],
      ),
      deviceType: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}device_type'],
      ),
      deviceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_id'],
      ),
    );
  }

  @override
  $AccountInfoTable createAlias(String alias) {
    return $AccountInfoTable(attachedDatabase, alias);
  }
}

class AccountInfoData extends DataClass implements Insertable<AccountInfoData> {
  final int id;
  final String? socialId;
  final String? uuid;
  final String? userId;
  final String? fullName;
  final String? email;
  final String? phoneNumber;
  final String? address;
  final String? avatar;
  final String? clastLogin;
  final bool? isActive;
  final int? typeUser;
  final String? deviceToken;
  final String? deviceName;
  final int? deviceType;
  final String? deviceId;
  const AccountInfoData({
    required this.id,
    this.socialId,
    this.uuid,
    this.userId,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.address,
    this.avatar,
    this.clastLogin,
    this.isActive,
    this.typeUser,
    this.deviceToken,
    this.deviceName,
    this.deviceType,
    this.deviceId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || socialId != null) {
      map['social_id'] = Variable<String>(socialId);
    }
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String>(uuid);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || avatar != null) {
      map['avatar'] = Variable<String>(avatar);
    }
    if (!nullToAbsent || clastLogin != null) {
      map['clast_login'] = Variable<String>(clastLogin);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<bool>(isActive);
    }
    if (!nullToAbsent || typeUser != null) {
      map['type_user'] = Variable<int>(typeUser);
    }
    if (!nullToAbsent || deviceToken != null) {
      map['device_token'] = Variable<String>(deviceToken);
    }
    if (!nullToAbsent || deviceName != null) {
      map['device_name'] = Variable<String>(deviceName);
    }
    if (!nullToAbsent || deviceType != null) {
      map['device_type'] = Variable<int>(deviceType);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    return map;
  }

  AccountInfoCompanion toCompanion(bool nullToAbsent) {
    return AccountInfoCompanion(
      id: Value(id),
      socialId: socialId == null && nullToAbsent
          ? const Value.absent()
          : Value(socialId),
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      avatar: avatar == null && nullToAbsent
          ? const Value.absent()
          : Value(avatar),
      clastLogin: clastLogin == null && nullToAbsent
          ? const Value.absent()
          : Value(clastLogin),
      isActive: isActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isActive),
      typeUser: typeUser == null && nullToAbsent
          ? const Value.absent()
          : Value(typeUser),
      deviceToken: deviceToken == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceToken),
      deviceName: deviceName == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceName),
      deviceType: deviceType == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceType),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
    );
  }

  factory AccountInfoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AccountInfoData(
      id: serializer.fromJson<int>(json['id']),
      socialId: serializer.fromJson<String?>(json['socialId']),
      uuid: serializer.fromJson<String?>(json['uuid']),
      userId: serializer.fromJson<String?>(json['userId']),
      fullName: serializer.fromJson<String?>(json['fullName']),
      email: serializer.fromJson<String?>(json['email']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      address: serializer.fromJson<String?>(json['address']),
      avatar: serializer.fromJson<String?>(json['avatar']),
      clastLogin: serializer.fromJson<String?>(json['clastLogin']),
      isActive: serializer.fromJson<bool?>(json['isActive']),
      typeUser: serializer.fromJson<int?>(json['typeUser']),
      deviceToken: serializer.fromJson<String?>(json['deviceToken']),
      deviceName: serializer.fromJson<String?>(json['deviceName']),
      deviceType: serializer.fromJson<int?>(json['deviceType']),
      deviceId: serializer.fromJson<String?>(json['deviceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'socialId': serializer.toJson<String?>(socialId),
      'uuid': serializer.toJson<String?>(uuid),
      'userId': serializer.toJson<String?>(userId),
      'fullName': serializer.toJson<String?>(fullName),
      'email': serializer.toJson<String?>(email),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'address': serializer.toJson<String?>(address),
      'avatar': serializer.toJson<String?>(avatar),
      'clastLogin': serializer.toJson<String?>(clastLogin),
      'isActive': serializer.toJson<bool?>(isActive),
      'typeUser': serializer.toJson<int?>(typeUser),
      'deviceToken': serializer.toJson<String?>(deviceToken),
      'deviceName': serializer.toJson<String?>(deviceName),
      'deviceType': serializer.toJson<int?>(deviceType),
      'deviceId': serializer.toJson<String?>(deviceId),
    };
  }

  AccountInfoData copyWith({
    int? id,
    Value<String?> socialId = const Value.absent(),
    Value<String?> uuid = const Value.absent(),
    Value<String?> userId = const Value.absent(),
    Value<String?> fullName = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> phoneNumber = const Value.absent(),
    Value<String?> address = const Value.absent(),
    Value<String?> avatar = const Value.absent(),
    Value<String?> clastLogin = const Value.absent(),
    Value<bool?> isActive = const Value.absent(),
    Value<int?> typeUser = const Value.absent(),
    Value<String?> deviceToken = const Value.absent(),
    Value<String?> deviceName = const Value.absent(),
    Value<int?> deviceType = const Value.absent(),
    Value<String?> deviceId = const Value.absent(),
  }) => AccountInfoData(
    id: id ?? this.id,
    socialId: socialId.present ? socialId.value : this.socialId,
    uuid: uuid.present ? uuid.value : this.uuid,
    userId: userId.present ? userId.value : this.userId,
    fullName: fullName.present ? fullName.value : this.fullName,
    email: email.present ? email.value : this.email,
    phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
    address: address.present ? address.value : this.address,
    avatar: avatar.present ? avatar.value : this.avatar,
    clastLogin: clastLogin.present ? clastLogin.value : this.clastLogin,
    isActive: isActive.present ? isActive.value : this.isActive,
    typeUser: typeUser.present ? typeUser.value : this.typeUser,
    deviceToken: deviceToken.present ? deviceToken.value : this.deviceToken,
    deviceName: deviceName.present ? deviceName.value : this.deviceName,
    deviceType: deviceType.present ? deviceType.value : this.deviceType,
    deviceId: deviceId.present ? deviceId.value : this.deviceId,
  );
  AccountInfoData copyWithCompanion(AccountInfoCompanion data) {
    return AccountInfoData(
      id: data.id.present ? data.id.value : this.id,
      socialId: data.socialId.present ? data.socialId.value : this.socialId,
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      userId: data.userId.present ? data.userId.value : this.userId,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      email: data.email.present ? data.email.value : this.email,
      phoneNumber: data.phoneNumber.present
          ? data.phoneNumber.value
          : this.phoneNumber,
      address: data.address.present ? data.address.value : this.address,
      avatar: data.avatar.present ? data.avatar.value : this.avatar,
      clastLogin: data.clastLogin.present
          ? data.clastLogin.value
          : this.clastLogin,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      typeUser: data.typeUser.present ? data.typeUser.value : this.typeUser,
      deviceToken: data.deviceToken.present
          ? data.deviceToken.value
          : this.deviceToken,
      deviceName: data.deviceName.present
          ? data.deviceName.value
          : this.deviceName,
      deviceType: data.deviceType.present
          ? data.deviceType.value
          : this.deviceType,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AccountInfoData(')
          ..write('id: $id, ')
          ..write('socialId: $socialId, ')
          ..write('uuid: $uuid, ')
          ..write('userId: $userId, ')
          ..write('fullName: $fullName, ')
          ..write('email: $email, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('address: $address, ')
          ..write('avatar: $avatar, ')
          ..write('clastLogin: $clastLogin, ')
          ..write('isActive: $isActive, ')
          ..write('typeUser: $typeUser, ')
          ..write('deviceToken: $deviceToken, ')
          ..write('deviceName: $deviceName, ')
          ..write('deviceType: $deviceType, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    socialId,
    uuid,
    userId,
    fullName,
    email,
    phoneNumber,
    address,
    avatar,
    clastLogin,
    isActive,
    typeUser,
    deviceToken,
    deviceName,
    deviceType,
    deviceId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountInfoData &&
          other.id == this.id &&
          other.socialId == this.socialId &&
          other.uuid == this.uuid &&
          other.userId == this.userId &&
          other.fullName == this.fullName &&
          other.email == this.email &&
          other.phoneNumber == this.phoneNumber &&
          other.address == this.address &&
          other.avatar == this.avatar &&
          other.clastLogin == this.clastLogin &&
          other.isActive == this.isActive &&
          other.typeUser == this.typeUser &&
          other.deviceToken == this.deviceToken &&
          other.deviceName == this.deviceName &&
          other.deviceType == this.deviceType &&
          other.deviceId == this.deviceId);
}

class AccountInfoCompanion extends UpdateCompanion<AccountInfoData> {
  final Value<int> id;
  final Value<String?> socialId;
  final Value<String?> uuid;
  final Value<String?> userId;
  final Value<String?> fullName;
  final Value<String?> email;
  final Value<String?> phoneNumber;
  final Value<String?> address;
  final Value<String?> avatar;
  final Value<String?> clastLogin;
  final Value<bool?> isActive;
  final Value<int?> typeUser;
  final Value<String?> deviceToken;
  final Value<String?> deviceName;
  final Value<int?> deviceType;
  final Value<String?> deviceId;
  const AccountInfoCompanion({
    this.id = const Value.absent(),
    this.socialId = const Value.absent(),
    this.uuid = const Value.absent(),
    this.userId = const Value.absent(),
    this.fullName = const Value.absent(),
    this.email = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.address = const Value.absent(),
    this.avatar = const Value.absent(),
    this.clastLogin = const Value.absent(),
    this.isActive = const Value.absent(),
    this.typeUser = const Value.absent(),
    this.deviceToken = const Value.absent(),
    this.deviceName = const Value.absent(),
    this.deviceType = const Value.absent(),
    this.deviceId = const Value.absent(),
  });
  AccountInfoCompanion.insert({
    this.id = const Value.absent(),
    this.socialId = const Value.absent(),
    this.uuid = const Value.absent(),
    this.userId = const Value.absent(),
    this.fullName = const Value.absent(),
    this.email = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.address = const Value.absent(),
    this.avatar = const Value.absent(),
    this.clastLogin = const Value.absent(),
    this.isActive = const Value.absent(),
    this.typeUser = const Value.absent(),
    this.deviceToken = const Value.absent(),
    this.deviceName = const Value.absent(),
    this.deviceType = const Value.absent(),
    this.deviceId = const Value.absent(),
  });
  static Insertable<AccountInfoData> custom({
    Expression<int>? id,
    Expression<String>? socialId,
    Expression<String>? uuid,
    Expression<String>? userId,
    Expression<String>? fullName,
    Expression<String>? email,
    Expression<String>? phoneNumber,
    Expression<String>? address,
    Expression<String>? avatar,
    Expression<String>? clastLogin,
    Expression<bool>? isActive,
    Expression<int>? typeUser,
    Expression<String>? deviceToken,
    Expression<String>? deviceName,
    Expression<int>? deviceType,
    Expression<String>? deviceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (socialId != null) 'social_id': socialId,
      if (uuid != null) 'uuid': uuid,
      if (userId != null) 'user_id': userId,
      if (fullName != null) 'full_name': fullName,
      if (email != null) 'email': email,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (address != null) 'address': address,
      if (avatar != null) 'avatar': avatar,
      if (clastLogin != null) 'clast_login': clastLogin,
      if (isActive != null) 'is_active': isActive,
      if (typeUser != null) 'type_user': typeUser,
      if (deviceToken != null) 'device_token': deviceToken,
      if (deviceName != null) 'device_name': deviceName,
      if (deviceType != null) 'device_type': deviceType,
      if (deviceId != null) 'device_id': deviceId,
    });
  }

  AccountInfoCompanion copyWith({
    Value<int>? id,
    Value<String?>? socialId,
    Value<String?>? uuid,
    Value<String?>? userId,
    Value<String?>? fullName,
    Value<String?>? email,
    Value<String?>? phoneNumber,
    Value<String?>? address,
    Value<String?>? avatar,
    Value<String?>? clastLogin,
    Value<bool?>? isActive,
    Value<int?>? typeUser,
    Value<String?>? deviceToken,
    Value<String?>? deviceName,
    Value<int?>? deviceType,
    Value<String?>? deviceId,
  }) {
    return AccountInfoCompanion(
      id: id ?? this.id,
      socialId: socialId ?? this.socialId,
      uuid: uuid ?? this.uuid,
      userId: userId ?? this.userId,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      avatar: avatar ?? this.avatar,
      clastLogin: clastLogin ?? this.clastLogin,
      isActive: isActive ?? this.isActive,
      typeUser: typeUser ?? this.typeUser,
      deviceToken: deviceToken ?? this.deviceToken,
      deviceName: deviceName ?? this.deviceName,
      deviceType: deviceType ?? this.deviceType,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (socialId.present) {
      map['social_id'] = Variable<String>(socialId.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (clastLogin.present) {
      map['clast_login'] = Variable<String>(clastLogin.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (typeUser.present) {
      map['type_user'] = Variable<int>(typeUser.value);
    }
    if (deviceToken.present) {
      map['device_token'] = Variable<String>(deviceToken.value);
    }
    if (deviceName.present) {
      map['device_name'] = Variable<String>(deviceName.value);
    }
    if (deviceType.present) {
      map['device_type'] = Variable<int>(deviceType.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountInfoCompanion(')
          ..write('id: $id, ')
          ..write('socialId: $socialId, ')
          ..write('uuid: $uuid, ')
          ..write('userId: $userId, ')
          ..write('fullName: $fullName, ')
          ..write('email: $email, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('address: $address, ')
          ..write('avatar: $avatar, ')
          ..write('clastLogin: $clastLogin, ')
          ..write('isActive: $isActive, ')
          ..write('typeUser: $typeUser, ')
          ..write('deviceToken: $deviceToken, ')
          ..write('deviceName: $deviceName, ')
          ..write('deviceType: $deviceType, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }
}

class $ExpenditureInfoTable extends ExpenditureInfo
    with TableInfo<$ExpenditureInfoTable, ExpenditureInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpenditureInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _moneyMeta = const VerificationMeta('money');
  @override
  late final GeneratedColumn<int> money = GeneratedColumn<int>(
    'money',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<int> day = GeneratedColumn<int>(
    'day',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _monthMeta = const VerificationMeta('month');
  @override
  late final GeneratedColumn<int> month = GeneratedColumn<int>(
    'month',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _yearMonthMeta = const VerificationMeta(
    'yearMonth',
  );
  @override
  late final GeneratedColumn<String> yearMonth = GeneratedColumn<String>(
    'year_month',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _yearMonthDayMeta = const VerificationMeta(
    'yearMonthDay',
  );
  @override
  late final GeneratedColumn<String> yearMonthDay = GeneratedColumn<String>(
    'year_month_day',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncMeta = const VerificationMeta('sync');
  @override
  late final GeneratedColumn<bool> sync = GeneratedColumn<bool>(
    'sync',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("sync" IN (0, 1))',
    ),
  );
  static const VerificationMeta _keyFirebaseMeta = const VerificationMeta(
    'keyFirebase',
  );
  @override
  late final GeneratedColumn<String> keyFirebase = GeneratedColumn<String>(
    'key_firebase',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
    'uuid',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<String> timestamp = GeneratedColumn<String>(
    'timestamp',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    money,
    day,
    month,
    year,
    yearMonth,
    yearMonthDay,
    sync,
    keyFirebase,
    uuid,
    timestamp,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expenditure_info';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExpenditureInfoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('money')) {
      context.handle(
        _moneyMeta,
        money.isAcceptableOrUnknown(data['money']!, _moneyMeta),
      );
    }
    if (data.containsKey('day')) {
      context.handle(
        _dayMeta,
        day.isAcceptableOrUnknown(data['day']!, _dayMeta),
      );
    }
    if (data.containsKey('month')) {
      context.handle(
        _monthMeta,
        month.isAcceptableOrUnknown(data['month']!, _monthMeta),
      );
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    }
    if (data.containsKey('year_month')) {
      context.handle(
        _yearMonthMeta,
        yearMonth.isAcceptableOrUnknown(data['year_month']!, _yearMonthMeta),
      );
    }
    if (data.containsKey('year_month_day')) {
      context.handle(
        _yearMonthDayMeta,
        yearMonthDay.isAcceptableOrUnknown(
          data['year_month_day']!,
          _yearMonthDayMeta,
        ),
      );
    }
    if (data.containsKey('sync')) {
      context.handle(
        _syncMeta,
        sync.isAcceptableOrUnknown(data['sync']!, _syncMeta),
      );
    }
    if (data.containsKey('key_firebase')) {
      context.handle(
        _keyFirebaseMeta,
        keyFirebase.isAcceptableOrUnknown(
          data['key_firebase']!,
          _keyFirebaseMeta,
        ),
      );
    }
    if (data.containsKey('uuid')) {
      context.handle(
        _uuidMeta,
        uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta),
      );
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExpenditureInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExpenditureInfoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      money: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}money'],
      ),
      day: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day'],
      ),
      month: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}month'],
      ),
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      ),
      yearMonth: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year_month'],
      ),
      yearMonthDay: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year_month_day'],
      ),
      sync: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}sync'],
      ),
      keyFirebase: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key_firebase'],
      ),
      uuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uuid'],
      ),
      timestamp: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}timestamp'],
      ),
    );
  }

  @override
  $ExpenditureInfoTable createAlias(String alias) {
    return $ExpenditureInfoTable(attachedDatabase, alias);
  }
}

class ExpenditureInfoData extends DataClass
    implements Insertable<ExpenditureInfoData> {
  final int id;
  final String? name;
  final int? money;
  final int? day;
  final int? month;
  final int? year;
  final String? yearMonth;
  final String? yearMonthDay;
  final bool? sync;
  final String? keyFirebase;
  final String? uuid;
  final String? timestamp;
  const ExpenditureInfoData({
    required this.id,
    this.name,
    this.money,
    this.day,
    this.month,
    this.year,
    this.yearMonth,
    this.yearMonthDay,
    this.sync,
    this.keyFirebase,
    this.uuid,
    this.timestamp,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || money != null) {
      map['money'] = Variable<int>(money);
    }
    if (!nullToAbsent || day != null) {
      map['day'] = Variable<int>(day);
    }
    if (!nullToAbsent || month != null) {
      map['month'] = Variable<int>(month);
    }
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    if (!nullToAbsent || yearMonth != null) {
      map['year_month'] = Variable<String>(yearMonth);
    }
    if (!nullToAbsent || yearMonthDay != null) {
      map['year_month_day'] = Variable<String>(yearMonthDay);
    }
    if (!nullToAbsent || sync != null) {
      map['sync'] = Variable<bool>(sync);
    }
    if (!nullToAbsent || keyFirebase != null) {
      map['key_firebase'] = Variable<String>(keyFirebase);
    }
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String>(uuid);
    }
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<String>(timestamp);
    }
    return map;
  }

  ExpenditureInfoCompanion toCompanion(bool nullToAbsent) {
    return ExpenditureInfoCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      money: money == null && nullToAbsent
          ? const Value.absent()
          : Value(money),
      day: day == null && nullToAbsent ? const Value.absent() : Value(day),
      month: month == null && nullToAbsent
          ? const Value.absent()
          : Value(month),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      yearMonth: yearMonth == null && nullToAbsent
          ? const Value.absent()
          : Value(yearMonth),
      yearMonthDay: yearMonthDay == null && nullToAbsent
          ? const Value.absent()
          : Value(yearMonthDay),
      sync: sync == null && nullToAbsent ? const Value.absent() : Value(sync),
      keyFirebase: keyFirebase == null && nullToAbsent
          ? const Value.absent()
          : Value(keyFirebase),
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
    );
  }

  factory ExpenditureInfoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpenditureInfoData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      money: serializer.fromJson<int?>(json['money']),
      day: serializer.fromJson<int?>(json['day']),
      month: serializer.fromJson<int?>(json['month']),
      year: serializer.fromJson<int?>(json['year']),
      yearMonth: serializer.fromJson<String?>(json['yearMonth']),
      yearMonthDay: serializer.fromJson<String?>(json['yearMonthDay']),
      sync: serializer.fromJson<bool?>(json['sync']),
      keyFirebase: serializer.fromJson<String?>(json['keyFirebase']),
      uuid: serializer.fromJson<String?>(json['uuid']),
      timestamp: serializer.fromJson<String?>(json['timestamp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'money': serializer.toJson<int?>(money),
      'day': serializer.toJson<int?>(day),
      'month': serializer.toJson<int?>(month),
      'year': serializer.toJson<int?>(year),
      'yearMonth': serializer.toJson<String?>(yearMonth),
      'yearMonthDay': serializer.toJson<String?>(yearMonthDay),
      'sync': serializer.toJson<bool?>(sync),
      'keyFirebase': serializer.toJson<String?>(keyFirebase),
      'uuid': serializer.toJson<String?>(uuid),
      'timestamp': serializer.toJson<String?>(timestamp),
    };
  }

  ExpenditureInfoData copyWith({
    int? id,
    Value<String?> name = const Value.absent(),
    Value<int?> money = const Value.absent(),
    Value<int?> day = const Value.absent(),
    Value<int?> month = const Value.absent(),
    Value<int?> year = const Value.absent(),
    Value<String?> yearMonth = const Value.absent(),
    Value<String?> yearMonthDay = const Value.absent(),
    Value<bool?> sync = const Value.absent(),
    Value<String?> keyFirebase = const Value.absent(),
    Value<String?> uuid = const Value.absent(),
    Value<String?> timestamp = const Value.absent(),
  }) => ExpenditureInfoData(
    id: id ?? this.id,
    name: name.present ? name.value : this.name,
    money: money.present ? money.value : this.money,
    day: day.present ? day.value : this.day,
    month: month.present ? month.value : this.month,
    year: year.present ? year.value : this.year,
    yearMonth: yearMonth.present ? yearMonth.value : this.yearMonth,
    yearMonthDay: yearMonthDay.present ? yearMonthDay.value : this.yearMonthDay,
    sync: sync.present ? sync.value : this.sync,
    keyFirebase: keyFirebase.present ? keyFirebase.value : this.keyFirebase,
    uuid: uuid.present ? uuid.value : this.uuid,
    timestamp: timestamp.present ? timestamp.value : this.timestamp,
  );
  ExpenditureInfoData copyWithCompanion(ExpenditureInfoCompanion data) {
    return ExpenditureInfoData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      money: data.money.present ? data.money.value : this.money,
      day: data.day.present ? data.day.value : this.day,
      month: data.month.present ? data.month.value : this.month,
      year: data.year.present ? data.year.value : this.year,
      yearMonth: data.yearMonth.present ? data.yearMonth.value : this.yearMonth,
      yearMonthDay: data.yearMonthDay.present
          ? data.yearMonthDay.value
          : this.yearMonthDay,
      sync: data.sync.present ? data.sync.value : this.sync,
      keyFirebase: data.keyFirebase.present
          ? data.keyFirebase.value
          : this.keyFirebase,
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExpenditureInfoData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('money: $money, ')
          ..write('day: $day, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('yearMonth: $yearMonth, ')
          ..write('yearMonthDay: $yearMonthDay, ')
          ..write('sync: $sync, ')
          ..write('keyFirebase: $keyFirebase, ')
          ..write('uuid: $uuid, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    money,
    day,
    month,
    year,
    yearMonth,
    yearMonthDay,
    sync,
    keyFirebase,
    uuid,
    timestamp,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpenditureInfoData &&
          other.id == this.id &&
          other.name == this.name &&
          other.money == this.money &&
          other.day == this.day &&
          other.month == this.month &&
          other.year == this.year &&
          other.yearMonth == this.yearMonth &&
          other.yearMonthDay == this.yearMonthDay &&
          other.sync == this.sync &&
          other.keyFirebase == this.keyFirebase &&
          other.uuid == this.uuid &&
          other.timestamp == this.timestamp);
}

class ExpenditureInfoCompanion extends UpdateCompanion<ExpenditureInfoData> {
  final Value<int> id;
  final Value<String?> name;
  final Value<int?> money;
  final Value<int?> day;
  final Value<int?> month;
  final Value<int?> year;
  final Value<String?> yearMonth;
  final Value<String?> yearMonthDay;
  final Value<bool?> sync;
  final Value<String?> keyFirebase;
  final Value<String?> uuid;
  final Value<String?> timestamp;
  const ExpenditureInfoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.money = const Value.absent(),
    this.day = const Value.absent(),
    this.month = const Value.absent(),
    this.year = const Value.absent(),
    this.yearMonth = const Value.absent(),
    this.yearMonthDay = const Value.absent(),
    this.sync = const Value.absent(),
    this.keyFirebase = const Value.absent(),
    this.uuid = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  ExpenditureInfoCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.money = const Value.absent(),
    this.day = const Value.absent(),
    this.month = const Value.absent(),
    this.year = const Value.absent(),
    this.yearMonth = const Value.absent(),
    this.yearMonthDay = const Value.absent(),
    this.sync = const Value.absent(),
    this.keyFirebase = const Value.absent(),
    this.uuid = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  static Insertable<ExpenditureInfoData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? money,
    Expression<int>? day,
    Expression<int>? month,
    Expression<int>? year,
    Expression<String>? yearMonth,
    Expression<String>? yearMonthDay,
    Expression<bool>? sync,
    Expression<String>? keyFirebase,
    Expression<String>? uuid,
    Expression<String>? timestamp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (money != null) 'money': money,
      if (day != null) 'day': day,
      if (month != null) 'month': month,
      if (year != null) 'year': year,
      if (yearMonth != null) 'year_month': yearMonth,
      if (yearMonthDay != null) 'year_month_day': yearMonthDay,
      if (sync != null) 'sync': sync,
      if (keyFirebase != null) 'key_firebase': keyFirebase,
      if (uuid != null) 'uuid': uuid,
      if (timestamp != null) 'timestamp': timestamp,
    });
  }

  ExpenditureInfoCompanion copyWith({
    Value<int>? id,
    Value<String?>? name,
    Value<int?>? money,
    Value<int?>? day,
    Value<int?>? month,
    Value<int?>? year,
    Value<String?>? yearMonth,
    Value<String?>? yearMonthDay,
    Value<bool?>? sync,
    Value<String?>? keyFirebase,
    Value<String?>? uuid,
    Value<String?>? timestamp,
  }) {
    return ExpenditureInfoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      money: money ?? this.money,
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year,
      yearMonth: yearMonth ?? this.yearMonth,
      yearMonthDay: yearMonthDay ?? this.yearMonthDay,
      sync: sync ?? this.sync,
      keyFirebase: keyFirebase ?? this.keyFirebase,
      uuid: uuid ?? this.uuid,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (money.present) {
      map['money'] = Variable<int>(money.value);
    }
    if (day.present) {
      map['day'] = Variable<int>(day.value);
    }
    if (month.present) {
      map['month'] = Variable<int>(month.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (yearMonth.present) {
      map['year_month'] = Variable<String>(yearMonth.value);
    }
    if (yearMonthDay.present) {
      map['year_month_day'] = Variable<String>(yearMonthDay.value);
    }
    if (sync.present) {
      map['sync'] = Variable<bool>(sync.value);
    }
    if (keyFirebase.present) {
      map['key_firebase'] = Variable<String>(keyFirebase.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<String>(timestamp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpenditureInfoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('money: $money, ')
          ..write('day: $day, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('yearMonth: $yearMonth, ')
          ..write('yearMonthDay: $yearMonthDay, ')
          ..write('sync: $sync, ')
          ..write('keyFirebase: $keyFirebase, ')
          ..write('uuid: $uuid, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }
}

class $IncomeInfoTable extends IncomeInfo
    with TableInfo<$IncomeInfoTable, IncomeInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IncomeInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _moneyMeta = const VerificationMeta('money');
  @override
  late final GeneratedColumn<int> money = GeneratedColumn<int>(
    'money',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<int> day = GeneratedColumn<int>(
    'day',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _monthMeta = const VerificationMeta('month');
  @override
  late final GeneratedColumn<int> month = GeneratedColumn<int>(
    'month',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _yearMonthMeta = const VerificationMeta(
    'yearMonth',
  );
  @override
  late final GeneratedColumn<String> yearMonth = GeneratedColumn<String>(
    'year_month',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _yearMonthDayMeta = const VerificationMeta(
    'yearMonthDay',
  );
  @override
  late final GeneratedColumn<String> yearMonthDay = GeneratedColumn<String>(
    'year_month_day',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _syncMeta = const VerificationMeta('sync');
  @override
  late final GeneratedColumn<bool> sync = GeneratedColumn<bool>(
    'sync',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("sync" IN (0, 1))',
    ),
  );
  static const VerificationMeta _keyFirebaseMeta = const VerificationMeta(
    'keyFirebase',
  );
  @override
  late final GeneratedColumn<String> keyFirebase = GeneratedColumn<String>(
    'key_firebase',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
    'uuid',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<String> timestamp = GeneratedColumn<String>(
    'timestamp',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    money,
    day,
    month,
    year,
    yearMonth,
    yearMonthDay,
    sync,
    keyFirebase,
    uuid,
    timestamp,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'income_info';
  @override
  VerificationContext validateIntegrity(
    Insertable<IncomeInfoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('money')) {
      context.handle(
        _moneyMeta,
        money.isAcceptableOrUnknown(data['money']!, _moneyMeta),
      );
    }
    if (data.containsKey('day')) {
      context.handle(
        _dayMeta,
        day.isAcceptableOrUnknown(data['day']!, _dayMeta),
      );
    }
    if (data.containsKey('month')) {
      context.handle(
        _monthMeta,
        month.isAcceptableOrUnknown(data['month']!, _monthMeta),
      );
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    }
    if (data.containsKey('year_month')) {
      context.handle(
        _yearMonthMeta,
        yearMonth.isAcceptableOrUnknown(data['year_month']!, _yearMonthMeta),
      );
    }
    if (data.containsKey('year_month_day')) {
      context.handle(
        _yearMonthDayMeta,
        yearMonthDay.isAcceptableOrUnknown(
          data['year_month_day']!,
          _yearMonthDayMeta,
        ),
      );
    }
    if (data.containsKey('sync')) {
      context.handle(
        _syncMeta,
        sync.isAcceptableOrUnknown(data['sync']!, _syncMeta),
      );
    }
    if (data.containsKey('key_firebase')) {
      context.handle(
        _keyFirebaseMeta,
        keyFirebase.isAcceptableOrUnknown(
          data['key_firebase']!,
          _keyFirebaseMeta,
        ),
      );
    }
    if (data.containsKey('uuid')) {
      context.handle(
        _uuidMeta,
        uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta),
      );
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  IncomeInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IncomeInfoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      money: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}money'],
      ),
      day: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day'],
      ),
      month: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}month'],
      ),
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      ),
      yearMonth: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year_month'],
      ),
      yearMonthDay: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year_month_day'],
      ),
      sync: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}sync'],
      ),
      keyFirebase: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key_firebase'],
      ),
      uuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uuid'],
      ),
      timestamp: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}timestamp'],
      ),
    );
  }

  @override
  $IncomeInfoTable createAlias(String alias) {
    return $IncomeInfoTable(attachedDatabase, alias);
  }
}

class IncomeInfoData extends DataClass implements Insertable<IncomeInfoData> {
  final int id;
  final String? name;
  final int? money;
  final int? day;
  final int? month;
  final int? year;
  final String? yearMonth;
  final String? yearMonthDay;
  final bool? sync;
  final String? keyFirebase;
  final String? uuid;
  final String? timestamp;
  const IncomeInfoData({
    required this.id,
    this.name,
    this.money,
    this.day,
    this.month,
    this.year,
    this.yearMonth,
    this.yearMonthDay,
    this.sync,
    this.keyFirebase,
    this.uuid,
    this.timestamp,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || money != null) {
      map['money'] = Variable<int>(money);
    }
    if (!nullToAbsent || day != null) {
      map['day'] = Variable<int>(day);
    }
    if (!nullToAbsent || month != null) {
      map['month'] = Variable<int>(month);
    }
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    if (!nullToAbsent || yearMonth != null) {
      map['year_month'] = Variable<String>(yearMonth);
    }
    if (!nullToAbsent || yearMonthDay != null) {
      map['year_month_day'] = Variable<String>(yearMonthDay);
    }
    if (!nullToAbsent || sync != null) {
      map['sync'] = Variable<bool>(sync);
    }
    if (!nullToAbsent || keyFirebase != null) {
      map['key_firebase'] = Variable<String>(keyFirebase);
    }
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String>(uuid);
    }
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<String>(timestamp);
    }
    return map;
  }

  IncomeInfoCompanion toCompanion(bool nullToAbsent) {
    return IncomeInfoCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      money: money == null && nullToAbsent
          ? const Value.absent()
          : Value(money),
      day: day == null && nullToAbsent ? const Value.absent() : Value(day),
      month: month == null && nullToAbsent
          ? const Value.absent()
          : Value(month),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      yearMonth: yearMonth == null && nullToAbsent
          ? const Value.absent()
          : Value(yearMonth),
      yearMonthDay: yearMonthDay == null && nullToAbsent
          ? const Value.absent()
          : Value(yearMonthDay),
      sync: sync == null && nullToAbsent ? const Value.absent() : Value(sync),
      keyFirebase: keyFirebase == null && nullToAbsent
          ? const Value.absent()
          : Value(keyFirebase),
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
    );
  }

  factory IncomeInfoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IncomeInfoData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      money: serializer.fromJson<int?>(json['money']),
      day: serializer.fromJson<int?>(json['day']),
      month: serializer.fromJson<int?>(json['month']),
      year: serializer.fromJson<int?>(json['year']),
      yearMonth: serializer.fromJson<String?>(json['yearMonth']),
      yearMonthDay: serializer.fromJson<String?>(json['yearMonthDay']),
      sync: serializer.fromJson<bool?>(json['sync']),
      keyFirebase: serializer.fromJson<String?>(json['keyFirebase']),
      uuid: serializer.fromJson<String?>(json['uuid']),
      timestamp: serializer.fromJson<String?>(json['timestamp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'money': serializer.toJson<int?>(money),
      'day': serializer.toJson<int?>(day),
      'month': serializer.toJson<int?>(month),
      'year': serializer.toJson<int?>(year),
      'yearMonth': serializer.toJson<String?>(yearMonth),
      'yearMonthDay': serializer.toJson<String?>(yearMonthDay),
      'sync': serializer.toJson<bool?>(sync),
      'keyFirebase': serializer.toJson<String?>(keyFirebase),
      'uuid': serializer.toJson<String?>(uuid),
      'timestamp': serializer.toJson<String?>(timestamp),
    };
  }

  IncomeInfoData copyWith({
    int? id,
    Value<String?> name = const Value.absent(),
    Value<int?> money = const Value.absent(),
    Value<int?> day = const Value.absent(),
    Value<int?> month = const Value.absent(),
    Value<int?> year = const Value.absent(),
    Value<String?> yearMonth = const Value.absent(),
    Value<String?> yearMonthDay = const Value.absent(),
    Value<bool?> sync = const Value.absent(),
    Value<String?> keyFirebase = const Value.absent(),
    Value<String?> uuid = const Value.absent(),
    Value<String?> timestamp = const Value.absent(),
  }) => IncomeInfoData(
    id: id ?? this.id,
    name: name.present ? name.value : this.name,
    money: money.present ? money.value : this.money,
    day: day.present ? day.value : this.day,
    month: month.present ? month.value : this.month,
    year: year.present ? year.value : this.year,
    yearMonth: yearMonth.present ? yearMonth.value : this.yearMonth,
    yearMonthDay: yearMonthDay.present ? yearMonthDay.value : this.yearMonthDay,
    sync: sync.present ? sync.value : this.sync,
    keyFirebase: keyFirebase.present ? keyFirebase.value : this.keyFirebase,
    uuid: uuid.present ? uuid.value : this.uuid,
    timestamp: timestamp.present ? timestamp.value : this.timestamp,
  );
  IncomeInfoData copyWithCompanion(IncomeInfoCompanion data) {
    return IncomeInfoData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      money: data.money.present ? data.money.value : this.money,
      day: data.day.present ? data.day.value : this.day,
      month: data.month.present ? data.month.value : this.month,
      year: data.year.present ? data.year.value : this.year,
      yearMonth: data.yearMonth.present ? data.yearMonth.value : this.yearMonth,
      yearMonthDay: data.yearMonthDay.present
          ? data.yearMonthDay.value
          : this.yearMonthDay,
      sync: data.sync.present ? data.sync.value : this.sync,
      keyFirebase: data.keyFirebase.present
          ? data.keyFirebase.value
          : this.keyFirebase,
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
    );
  }

  @override
  String toString() {
    return (StringBuffer('IncomeInfoData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('money: $money, ')
          ..write('day: $day, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('yearMonth: $yearMonth, ')
          ..write('yearMonthDay: $yearMonthDay, ')
          ..write('sync: $sync, ')
          ..write('keyFirebase: $keyFirebase, ')
          ..write('uuid: $uuid, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    money,
    day,
    month,
    year,
    yearMonth,
    yearMonthDay,
    sync,
    keyFirebase,
    uuid,
    timestamp,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IncomeInfoData &&
          other.id == this.id &&
          other.name == this.name &&
          other.money == this.money &&
          other.day == this.day &&
          other.month == this.month &&
          other.year == this.year &&
          other.yearMonth == this.yearMonth &&
          other.yearMonthDay == this.yearMonthDay &&
          other.sync == this.sync &&
          other.keyFirebase == this.keyFirebase &&
          other.uuid == this.uuid &&
          other.timestamp == this.timestamp);
}

class IncomeInfoCompanion extends UpdateCompanion<IncomeInfoData> {
  final Value<int> id;
  final Value<String?> name;
  final Value<int?> money;
  final Value<int?> day;
  final Value<int?> month;
  final Value<int?> year;
  final Value<String?> yearMonth;
  final Value<String?> yearMonthDay;
  final Value<bool?> sync;
  final Value<String?> keyFirebase;
  final Value<String?> uuid;
  final Value<String?> timestamp;
  const IncomeInfoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.money = const Value.absent(),
    this.day = const Value.absent(),
    this.month = const Value.absent(),
    this.year = const Value.absent(),
    this.yearMonth = const Value.absent(),
    this.yearMonthDay = const Value.absent(),
    this.sync = const Value.absent(),
    this.keyFirebase = const Value.absent(),
    this.uuid = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  IncomeInfoCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.money = const Value.absent(),
    this.day = const Value.absent(),
    this.month = const Value.absent(),
    this.year = const Value.absent(),
    this.yearMonth = const Value.absent(),
    this.yearMonthDay = const Value.absent(),
    this.sync = const Value.absent(),
    this.keyFirebase = const Value.absent(),
    this.uuid = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  static Insertable<IncomeInfoData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? money,
    Expression<int>? day,
    Expression<int>? month,
    Expression<int>? year,
    Expression<String>? yearMonth,
    Expression<String>? yearMonthDay,
    Expression<bool>? sync,
    Expression<String>? keyFirebase,
    Expression<String>? uuid,
    Expression<String>? timestamp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (money != null) 'money': money,
      if (day != null) 'day': day,
      if (month != null) 'month': month,
      if (year != null) 'year': year,
      if (yearMonth != null) 'year_month': yearMonth,
      if (yearMonthDay != null) 'year_month_day': yearMonthDay,
      if (sync != null) 'sync': sync,
      if (keyFirebase != null) 'key_firebase': keyFirebase,
      if (uuid != null) 'uuid': uuid,
      if (timestamp != null) 'timestamp': timestamp,
    });
  }

  IncomeInfoCompanion copyWith({
    Value<int>? id,
    Value<String?>? name,
    Value<int?>? money,
    Value<int?>? day,
    Value<int?>? month,
    Value<int?>? year,
    Value<String?>? yearMonth,
    Value<String?>? yearMonthDay,
    Value<bool?>? sync,
    Value<String?>? keyFirebase,
    Value<String?>? uuid,
    Value<String?>? timestamp,
  }) {
    return IncomeInfoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      money: money ?? this.money,
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year,
      yearMonth: yearMonth ?? this.yearMonth,
      yearMonthDay: yearMonthDay ?? this.yearMonthDay,
      sync: sync ?? this.sync,
      keyFirebase: keyFirebase ?? this.keyFirebase,
      uuid: uuid ?? this.uuid,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (money.present) {
      map['money'] = Variable<int>(money.value);
    }
    if (day.present) {
      map['day'] = Variable<int>(day.value);
    }
    if (month.present) {
      map['month'] = Variable<int>(month.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (yearMonth.present) {
      map['year_month'] = Variable<String>(yearMonth.value);
    }
    if (yearMonthDay.present) {
      map['year_month_day'] = Variable<String>(yearMonthDay.value);
    }
    if (sync.present) {
      map['sync'] = Variable<bool>(sync.value);
    }
    if (keyFirebase.present) {
      map['key_firebase'] = Variable<String>(keyFirebase.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<String>(timestamp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IncomeInfoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('money: $money, ')
          ..write('day: $day, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('yearMonth: $yearMonth, ')
          ..write('yearMonthDay: $yearMonthDay, ')
          ..write('sync: $sync, ')
          ..write('keyFirebase: $keyFirebase, ')
          ..write('uuid: $uuid, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AccountInfoTable accountInfo = $AccountInfoTable(this);
  late final $ExpenditureInfoTable expenditureInfo = $ExpenditureInfoTable(
    this,
  );
  late final $IncomeInfoTable incomeInfo = $IncomeInfoTable(this);
  late final AccountDao accountDao = AccountDao(this as AppDatabase);
  late final ExpenditureDao expenditureDao = ExpenditureDao(
    this as AppDatabase,
  );
  late final IncomeDao incomeDao = IncomeDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    accountInfo,
    expenditureInfo,
    incomeInfo,
  ];
}

typedef $$AccountInfoTableCreateCompanionBuilder =
    AccountInfoCompanion Function({
      Value<int> id,
      Value<String?> socialId,
      Value<String?> uuid,
      Value<String?> userId,
      Value<String?> fullName,
      Value<String?> email,
      Value<String?> phoneNumber,
      Value<String?> address,
      Value<String?> avatar,
      Value<String?> clastLogin,
      Value<bool?> isActive,
      Value<int?> typeUser,
      Value<String?> deviceToken,
      Value<String?> deviceName,
      Value<int?> deviceType,
      Value<String?> deviceId,
    });
typedef $$AccountInfoTableUpdateCompanionBuilder =
    AccountInfoCompanion Function({
      Value<int> id,
      Value<String?> socialId,
      Value<String?> uuid,
      Value<String?> userId,
      Value<String?> fullName,
      Value<String?> email,
      Value<String?> phoneNumber,
      Value<String?> address,
      Value<String?> avatar,
      Value<String?> clastLogin,
      Value<bool?> isActive,
      Value<int?> typeUser,
      Value<String?> deviceToken,
      Value<String?> deviceName,
      Value<int?> deviceType,
      Value<String?> deviceId,
    });

class $$AccountInfoTableFilterComposer
    extends Composer<_$AppDatabase, $AccountInfoTable> {
  $$AccountInfoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get socialId => $composableBuilder(
    column: $table.socialId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatar => $composableBuilder(
    column: $table.avatar,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clastLogin => $composableBuilder(
    column: $table.clastLogin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get typeUser => $composableBuilder(
    column: $table.typeUser,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deviceToken => $composableBuilder(
    column: $table.deviceToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deviceName => $composableBuilder(
    column: $table.deviceName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get deviceType => $composableBuilder(
    column: $table.deviceType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AccountInfoTableOrderingComposer
    extends Composer<_$AppDatabase, $AccountInfoTable> {
  $$AccountInfoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get socialId => $composableBuilder(
    column: $table.socialId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatar => $composableBuilder(
    column: $table.avatar,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clastLogin => $composableBuilder(
    column: $table.clastLogin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get typeUser => $composableBuilder(
    column: $table.typeUser,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deviceToken => $composableBuilder(
    column: $table.deviceToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deviceName => $composableBuilder(
    column: $table.deviceName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get deviceType => $composableBuilder(
    column: $table.deviceType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AccountInfoTableAnnotationComposer
    extends Composer<_$AppDatabase, $AccountInfoTable> {
  $$AccountInfoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get socialId =>
      $composableBuilder(column: $table.socialId, builder: (column) => column);

  GeneratedColumn<String> get uuid =>
      $composableBuilder(column: $table.uuid, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get avatar =>
      $composableBuilder(column: $table.avatar, builder: (column) => column);

  GeneratedColumn<String> get clastLogin => $composableBuilder(
    column: $table.clastLogin,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get typeUser =>
      $composableBuilder(column: $table.typeUser, builder: (column) => column);

  GeneratedColumn<String> get deviceToken => $composableBuilder(
    column: $table.deviceToken,
    builder: (column) => column,
  );

  GeneratedColumn<String> get deviceName => $composableBuilder(
    column: $table.deviceName,
    builder: (column) => column,
  );

  GeneratedColumn<int> get deviceType => $composableBuilder(
    column: $table.deviceType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get deviceId =>
      $composableBuilder(column: $table.deviceId, builder: (column) => column);
}

class $$AccountInfoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AccountInfoTable,
          AccountInfoData,
          $$AccountInfoTableFilterComposer,
          $$AccountInfoTableOrderingComposer,
          $$AccountInfoTableAnnotationComposer,
          $$AccountInfoTableCreateCompanionBuilder,
          $$AccountInfoTableUpdateCompanionBuilder,
          (
            AccountInfoData,
            BaseReferences<_$AppDatabase, $AccountInfoTable, AccountInfoData>,
          ),
          AccountInfoData,
          PrefetchHooks Function()
        > {
  $$AccountInfoTableTableManager(_$AppDatabase db, $AccountInfoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountInfoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountInfoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountInfoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> socialId = const Value.absent(),
                Value<String?> uuid = const Value.absent(),
                Value<String?> userId = const Value.absent(),
                Value<String?> fullName = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> phoneNumber = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String?> avatar = const Value.absent(),
                Value<String?> clastLogin = const Value.absent(),
                Value<bool?> isActive = const Value.absent(),
                Value<int?> typeUser = const Value.absent(),
                Value<String?> deviceToken = const Value.absent(),
                Value<String?> deviceName = const Value.absent(),
                Value<int?> deviceType = const Value.absent(),
                Value<String?> deviceId = const Value.absent(),
              }) => AccountInfoCompanion(
                id: id,
                socialId: socialId,
                uuid: uuid,
                userId: userId,
                fullName: fullName,
                email: email,
                phoneNumber: phoneNumber,
                address: address,
                avatar: avatar,
                clastLogin: clastLogin,
                isActive: isActive,
                typeUser: typeUser,
                deviceToken: deviceToken,
                deviceName: deviceName,
                deviceType: deviceType,
                deviceId: deviceId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> socialId = const Value.absent(),
                Value<String?> uuid = const Value.absent(),
                Value<String?> userId = const Value.absent(),
                Value<String?> fullName = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> phoneNumber = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String?> avatar = const Value.absent(),
                Value<String?> clastLogin = const Value.absent(),
                Value<bool?> isActive = const Value.absent(),
                Value<int?> typeUser = const Value.absent(),
                Value<String?> deviceToken = const Value.absent(),
                Value<String?> deviceName = const Value.absent(),
                Value<int?> deviceType = const Value.absent(),
                Value<String?> deviceId = const Value.absent(),
              }) => AccountInfoCompanion.insert(
                id: id,
                socialId: socialId,
                uuid: uuid,
                userId: userId,
                fullName: fullName,
                email: email,
                phoneNumber: phoneNumber,
                address: address,
                avatar: avatar,
                clastLogin: clastLogin,
                isActive: isActive,
                typeUser: typeUser,
                deviceToken: deviceToken,
                deviceName: deviceName,
                deviceType: deviceType,
                deviceId: deviceId,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AccountInfoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AccountInfoTable,
      AccountInfoData,
      $$AccountInfoTableFilterComposer,
      $$AccountInfoTableOrderingComposer,
      $$AccountInfoTableAnnotationComposer,
      $$AccountInfoTableCreateCompanionBuilder,
      $$AccountInfoTableUpdateCompanionBuilder,
      (
        AccountInfoData,
        BaseReferences<_$AppDatabase, $AccountInfoTable, AccountInfoData>,
      ),
      AccountInfoData,
      PrefetchHooks Function()
    >;
typedef $$ExpenditureInfoTableCreateCompanionBuilder =
    ExpenditureInfoCompanion Function({
      Value<int> id,
      Value<String?> name,
      Value<int?> money,
      Value<int?> day,
      Value<int?> month,
      Value<int?> year,
      Value<String?> yearMonth,
      Value<String?> yearMonthDay,
      Value<bool?> sync,
      Value<String?> keyFirebase,
      Value<String?> uuid,
      Value<String?> timestamp,
    });
typedef $$ExpenditureInfoTableUpdateCompanionBuilder =
    ExpenditureInfoCompanion Function({
      Value<int> id,
      Value<String?> name,
      Value<int?> money,
      Value<int?> day,
      Value<int?> month,
      Value<int?> year,
      Value<String?> yearMonth,
      Value<String?> yearMonthDay,
      Value<bool?> sync,
      Value<String?> keyFirebase,
      Value<String?> uuid,
      Value<String?> timestamp,
    });

class $$ExpenditureInfoTableFilterComposer
    extends Composer<_$AppDatabase, $ExpenditureInfoTable> {
  $$ExpenditureInfoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get money => $composableBuilder(
    column: $table.money,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get yearMonth => $composableBuilder(
    column: $table.yearMonth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get yearMonthDay => $composableBuilder(
    column: $table.yearMonthDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get sync => $composableBuilder(
    column: $table.sync,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get keyFirebase => $composableBuilder(
    column: $table.keyFirebase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExpenditureInfoTableOrderingComposer
    extends Composer<_$AppDatabase, $ExpenditureInfoTable> {
  $$ExpenditureInfoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get money => $composableBuilder(
    column: $table.money,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get yearMonth => $composableBuilder(
    column: $table.yearMonth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get yearMonthDay => $composableBuilder(
    column: $table.yearMonthDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get sync => $composableBuilder(
    column: $table.sync,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get keyFirebase => $composableBuilder(
    column: $table.keyFirebase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExpenditureInfoTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExpenditureInfoTable> {
  $$ExpenditureInfoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get money =>
      $composableBuilder(column: $table.money, builder: (column) => column);

  GeneratedColumn<int> get day =>
      $composableBuilder(column: $table.day, builder: (column) => column);

  GeneratedColumn<int> get month =>
      $composableBuilder(column: $table.month, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get yearMonth =>
      $composableBuilder(column: $table.yearMonth, builder: (column) => column);

  GeneratedColumn<String> get yearMonthDay => $composableBuilder(
    column: $table.yearMonthDay,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get sync =>
      $composableBuilder(column: $table.sync, builder: (column) => column);

  GeneratedColumn<String> get keyFirebase => $composableBuilder(
    column: $table.keyFirebase,
    builder: (column) => column,
  );

  GeneratedColumn<String> get uuid =>
      $composableBuilder(column: $table.uuid, builder: (column) => column);

  GeneratedColumn<String> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);
}

class $$ExpenditureInfoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExpenditureInfoTable,
          ExpenditureInfoData,
          $$ExpenditureInfoTableFilterComposer,
          $$ExpenditureInfoTableOrderingComposer,
          $$ExpenditureInfoTableAnnotationComposer,
          $$ExpenditureInfoTableCreateCompanionBuilder,
          $$ExpenditureInfoTableUpdateCompanionBuilder,
          (
            ExpenditureInfoData,
            BaseReferences<
              _$AppDatabase,
              $ExpenditureInfoTable,
              ExpenditureInfoData
            >,
          ),
          ExpenditureInfoData,
          PrefetchHooks Function()
        > {
  $$ExpenditureInfoTableTableManager(
    _$AppDatabase db,
    $ExpenditureInfoTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpenditureInfoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpenditureInfoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpenditureInfoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<int?> money = const Value.absent(),
                Value<int?> day = const Value.absent(),
                Value<int?> month = const Value.absent(),
                Value<int?> year = const Value.absent(),
                Value<String?> yearMonth = const Value.absent(),
                Value<String?> yearMonthDay = const Value.absent(),
                Value<bool?> sync = const Value.absent(),
                Value<String?> keyFirebase = const Value.absent(),
                Value<String?> uuid = const Value.absent(),
                Value<String?> timestamp = const Value.absent(),
              }) => ExpenditureInfoCompanion(
                id: id,
                name: name,
                money: money,
                day: day,
                month: month,
                year: year,
                yearMonth: yearMonth,
                yearMonthDay: yearMonthDay,
                sync: sync,
                keyFirebase: keyFirebase,
                uuid: uuid,
                timestamp: timestamp,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<int?> money = const Value.absent(),
                Value<int?> day = const Value.absent(),
                Value<int?> month = const Value.absent(),
                Value<int?> year = const Value.absent(),
                Value<String?> yearMonth = const Value.absent(),
                Value<String?> yearMonthDay = const Value.absent(),
                Value<bool?> sync = const Value.absent(),
                Value<String?> keyFirebase = const Value.absent(),
                Value<String?> uuid = const Value.absent(),
                Value<String?> timestamp = const Value.absent(),
              }) => ExpenditureInfoCompanion.insert(
                id: id,
                name: name,
                money: money,
                day: day,
                month: month,
                year: year,
                yearMonth: yearMonth,
                yearMonthDay: yearMonthDay,
                sync: sync,
                keyFirebase: keyFirebase,
                uuid: uuid,
                timestamp: timestamp,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExpenditureInfoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExpenditureInfoTable,
      ExpenditureInfoData,
      $$ExpenditureInfoTableFilterComposer,
      $$ExpenditureInfoTableOrderingComposer,
      $$ExpenditureInfoTableAnnotationComposer,
      $$ExpenditureInfoTableCreateCompanionBuilder,
      $$ExpenditureInfoTableUpdateCompanionBuilder,
      (
        ExpenditureInfoData,
        BaseReferences<
          _$AppDatabase,
          $ExpenditureInfoTable,
          ExpenditureInfoData
        >,
      ),
      ExpenditureInfoData,
      PrefetchHooks Function()
    >;
typedef $$IncomeInfoTableCreateCompanionBuilder =
    IncomeInfoCompanion Function({
      Value<int> id,
      Value<String?> name,
      Value<int?> money,
      Value<int?> day,
      Value<int?> month,
      Value<int?> year,
      Value<String?> yearMonth,
      Value<String?> yearMonthDay,
      Value<bool?> sync,
      Value<String?> keyFirebase,
      Value<String?> uuid,
      Value<String?> timestamp,
    });
typedef $$IncomeInfoTableUpdateCompanionBuilder =
    IncomeInfoCompanion Function({
      Value<int> id,
      Value<String?> name,
      Value<int?> money,
      Value<int?> day,
      Value<int?> month,
      Value<int?> year,
      Value<String?> yearMonth,
      Value<String?> yearMonthDay,
      Value<bool?> sync,
      Value<String?> keyFirebase,
      Value<String?> uuid,
      Value<String?> timestamp,
    });

class $$IncomeInfoTableFilterComposer
    extends Composer<_$AppDatabase, $IncomeInfoTable> {
  $$IncomeInfoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get money => $composableBuilder(
    column: $table.money,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get yearMonth => $composableBuilder(
    column: $table.yearMonth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get yearMonthDay => $composableBuilder(
    column: $table.yearMonthDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get sync => $composableBuilder(
    column: $table.sync,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get keyFirebase => $composableBuilder(
    column: $table.keyFirebase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );
}

class $$IncomeInfoTableOrderingComposer
    extends Composer<_$AppDatabase, $IncomeInfoTable> {
  $$IncomeInfoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get money => $composableBuilder(
    column: $table.money,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get yearMonth => $composableBuilder(
    column: $table.yearMonth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get yearMonthDay => $composableBuilder(
    column: $table.yearMonthDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get sync => $composableBuilder(
    column: $table.sync,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get keyFirebase => $composableBuilder(
    column: $table.keyFirebase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$IncomeInfoTableAnnotationComposer
    extends Composer<_$AppDatabase, $IncomeInfoTable> {
  $$IncomeInfoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get money =>
      $composableBuilder(column: $table.money, builder: (column) => column);

  GeneratedColumn<int> get day =>
      $composableBuilder(column: $table.day, builder: (column) => column);

  GeneratedColumn<int> get month =>
      $composableBuilder(column: $table.month, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get yearMonth =>
      $composableBuilder(column: $table.yearMonth, builder: (column) => column);

  GeneratedColumn<String> get yearMonthDay => $composableBuilder(
    column: $table.yearMonthDay,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get sync =>
      $composableBuilder(column: $table.sync, builder: (column) => column);

  GeneratedColumn<String> get keyFirebase => $composableBuilder(
    column: $table.keyFirebase,
    builder: (column) => column,
  );

  GeneratedColumn<String> get uuid =>
      $composableBuilder(column: $table.uuid, builder: (column) => column);

  GeneratedColumn<String> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);
}

class $$IncomeInfoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $IncomeInfoTable,
          IncomeInfoData,
          $$IncomeInfoTableFilterComposer,
          $$IncomeInfoTableOrderingComposer,
          $$IncomeInfoTableAnnotationComposer,
          $$IncomeInfoTableCreateCompanionBuilder,
          $$IncomeInfoTableUpdateCompanionBuilder,
          (
            IncomeInfoData,
            BaseReferences<_$AppDatabase, $IncomeInfoTable, IncomeInfoData>,
          ),
          IncomeInfoData,
          PrefetchHooks Function()
        > {
  $$IncomeInfoTableTableManager(_$AppDatabase db, $IncomeInfoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$IncomeInfoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$IncomeInfoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$IncomeInfoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<int?> money = const Value.absent(),
                Value<int?> day = const Value.absent(),
                Value<int?> month = const Value.absent(),
                Value<int?> year = const Value.absent(),
                Value<String?> yearMonth = const Value.absent(),
                Value<String?> yearMonthDay = const Value.absent(),
                Value<bool?> sync = const Value.absent(),
                Value<String?> keyFirebase = const Value.absent(),
                Value<String?> uuid = const Value.absent(),
                Value<String?> timestamp = const Value.absent(),
              }) => IncomeInfoCompanion(
                id: id,
                name: name,
                money: money,
                day: day,
                month: month,
                year: year,
                yearMonth: yearMonth,
                yearMonthDay: yearMonthDay,
                sync: sync,
                keyFirebase: keyFirebase,
                uuid: uuid,
                timestamp: timestamp,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<int?> money = const Value.absent(),
                Value<int?> day = const Value.absent(),
                Value<int?> month = const Value.absent(),
                Value<int?> year = const Value.absent(),
                Value<String?> yearMonth = const Value.absent(),
                Value<String?> yearMonthDay = const Value.absent(),
                Value<bool?> sync = const Value.absent(),
                Value<String?> keyFirebase = const Value.absent(),
                Value<String?> uuid = const Value.absent(),
                Value<String?> timestamp = const Value.absent(),
              }) => IncomeInfoCompanion.insert(
                id: id,
                name: name,
                money: money,
                day: day,
                month: month,
                year: year,
                yearMonth: yearMonth,
                yearMonthDay: yearMonthDay,
                sync: sync,
                keyFirebase: keyFirebase,
                uuid: uuid,
                timestamp: timestamp,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$IncomeInfoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $IncomeInfoTable,
      IncomeInfoData,
      $$IncomeInfoTableFilterComposer,
      $$IncomeInfoTableOrderingComposer,
      $$IncomeInfoTableAnnotationComposer,
      $$IncomeInfoTableCreateCompanionBuilder,
      $$IncomeInfoTableUpdateCompanionBuilder,
      (
        IncomeInfoData,
        BaseReferences<_$AppDatabase, $IncomeInfoTable, IncomeInfoData>,
      ),
      IncomeInfoData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AccountInfoTableTableManager get accountInfo =>
      $$AccountInfoTableTableManager(_db, _db.accountInfo);
  $$ExpenditureInfoTableTableManager get expenditureInfo =>
      $$ExpenditureInfoTableTableManager(_db, _db.expenditureInfo);
  $$IncomeInfoTableTableManager get incomeInfo =>
      $$IncomeInfoTableTableManager(_db, _db.incomeInfo);
}
