// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo()
  ..id = json['id'] as String?
  ..status = json['status'] as num?
  ..created_at = json['created_at'] as String?
  ..updated_at = json['updated_at'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..image = json['image'] == null
      ? null
      : Photoimage.fromJson(json['image'] as Map<String, dynamic>)
  ..comment_counts = json['comment_counts'] as num?
  ..like_counts = json['like_counts'] as num?
  ..view_counts = json['view_counts'] as num?
  ..collection_counts = json['collection_counts'] as num?
  ..pulse_score = json['pulse_score'] as num?
  ..pulse_type = json['pulse_type'] as String?
  ..is_private = json['is_private'] as bool?
  ..is_sensitive = json['is_sensitive'] as bool?
  ..storage_length = json['storage_length'] as num?
  ..user = json['user'] == null
      ? null
      : Photouser.fromJson(json['user'] as Map<String, dynamic>)
  ..liked = json['liked'] as bool?;

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'comment_counts': instance.comment_counts,
      'like_counts': instance.like_counts,
      'view_counts': instance.view_counts,
      'collection_counts': instance.collection_counts,
      'pulse_score': instance.pulse_score,
      'pulse_type': instance.pulse_type,
      'is_private': instance.is_private,
      'is_sensitive': instance.is_sensitive,
      'storage_length': instance.storage_length,
      'user': instance.user,
      'liked': instance.liked,
    };
