// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photouseravatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photouseravatar _$PhotouseravatarFromJson(Map<String, dynamic> json) =>
    Photouseravatar()
      ..url = json['url'] as String?
      ..org_width = json['org_width'] as num?
      ..org_height = json['org_height'] as num?
      ..org_url = json['org_url'] as String?
      ..cloud_name = json['cloud_name'] as String?
      ..dominant_color = json['dominant_color'] as String?;

Map<String, dynamic> _$PhotouseravatarToJson(Photouseravatar instance) =>
    <String, dynamic>{
      'url': instance.url,
      'org_width': instance.org_width,
      'org_height': instance.org_height,
      'org_url': instance.org_url,
      'cloud_name': instance.cloud_name,
      'dominant_color': instance.dominant_color,
    };
