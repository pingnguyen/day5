import 'package:json_annotation/json_annotation.dart';
import "photoimage.dart";
import "photouser.dart";
part 'photo.g.dart';

@JsonSerializable()
class Photo {
  Photo();

  String? id;
  num? status;
  String? created_at;
  String? updated_at;
  String? title;
  String? description;
  Photoimage? image;
  num? comment_counts;
  num? like_counts;
  num? view_counts;
  num? collection_counts;
  num? pulse_score;
  String? pulse_type;
  bool? is_private;
  bool? is_sensitive;
  num? storage_length;
  Photouser? user;
  bool? liked;
  
  factory Photo.fromJson(Map<String,dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
