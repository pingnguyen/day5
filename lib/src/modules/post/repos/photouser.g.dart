// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photouser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photouser _$PhotouserFromJson(Map<String, dynamic> json) => Photouser()
  ..id = json['id'] as String?
  ..username = json['username'] as String?
  ..first_name = json['first_name'] as String?
  ..last_name = json['last_name'] as String?
  ..avatar = json['avatar'] == null
      ? null
      : Photouseravatar.fromJson(json['avatar'] as Map<String, dynamic>)
  ..system_role = json['system_role'] as String?
  ..is_verified = json['is_verified'] as bool?
  ..created_at = json['created_at'] as String?;

Map<String, dynamic> _$PhotouserToJson(Photouser instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'avatar': instance.avatar,
      'system_role': instance.system_role,
      'is_verified': instance.is_verified,
      'created_at': instance.created_at,
    };
