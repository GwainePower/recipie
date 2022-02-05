// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String?,
      email: json['email'] as String,
      userName: json['userName'] as String,
      fullName: json['fullName'] as String?,
      age: json['age'] as int?,
      pictureUrl: json['pictureUrl'] as String?,
      hideEmail: json['hideEmail'] as bool? ?? false,
      hideFullName: json['hideFullName'] as bool? ?? false,
      hideAge: json['hideAge'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'age': instance.age,
      'pictureUrl': instance.pictureUrl,
      'hideEmail': instance.hideEmail,
      'hideFullName': instance.hideFullName,
      'hideAge': instance.hideAge,
    };
