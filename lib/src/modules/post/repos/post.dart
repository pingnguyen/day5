import 'package:json_annotation/json_annotation.dart';
import "data.dart";
import "param.dart";
import "paging.dart";
part 'post.g.dart';

@JsonSerializable()
class Post {
  Post();

  num? code;
  List<Data>? data;
  Param? param;
  Paging? paging;
  
  factory Post.fromJson(Map<String,dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
