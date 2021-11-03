import 'package:json_annotation/json_annotation.dart';
import "image.dart";
import "user.dart";
import "category.dart";
import "photo.dart";
part 'data.g.dart';

@JsonSerializable()
class Data {
  Data();

  String? id;
  num? status;
  String? created_at;
  String? updated_at;
  String? title;
  String? description;
  num? comment_counts;
  List<Image>? images;
  num? like_counts;
  num? view_counts;
  num? pulse_score;
  bool? is_sensitive;
  bool? is_private;
  List? tags;
  User? user;
  Category? category;
  List<Photo>? photos;
  bool? liked;
  
  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
