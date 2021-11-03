import 'package:json_annotation/json_annotation.dart';
import "useravatar.dart";
part 'user.g.dart';

@JsonSerializable()
class User {
  User();

  late String id;
  late String username;
  late String first_name;
  late String last_name;
  late Useravatar avatar;
  late String system_role;
  late bool is_verified;
  late String created_at;
  
  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
