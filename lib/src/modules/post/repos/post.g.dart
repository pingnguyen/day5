// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post()
  ..code = json['code'] as num?
  ..data = (json['data'] as List<dynamic>?)
      ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
      .toList()
  ..param = json['param'] == null
      ? null
      : Param.fromJson(json['param'] as Map<String, dynamic>)
  ..paging = json['paging'] == null
      ? null
      : Paging.fromJson(json['paging'] as Map<String, dynamic>);

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'param': instance.param,
      'paging': instance.paging,
    };
