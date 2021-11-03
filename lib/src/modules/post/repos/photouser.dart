import 'package:json_annotation/json_annotation.dart';
import "photouseravatar.dart";
part 'photouser.g.dart';

@JsonSerializable()
class Photouser {
  Photouser();

  String? id;
  String? username;
  String? first_name;
  String? last_name;
  Photouseravatar? avatar;
  String? system_role;
  bool? is_verified;
  String? created_at;
  
  factory Photouser.fromJson(Map<String,dynamic> json) => _$PhotouserFromJson(json);
  Map<String, dynamic> toJson() => _$PhotouserToJson(this);
}
