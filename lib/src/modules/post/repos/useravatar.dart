import 'package:json_annotation/json_annotation.dart';

part 'useravatar.g.dart';

@JsonSerializable()
class Useravatar {
  Useravatar();

  late String url;
  late num org_width;
  late num org_height;
  late String org_url;
  late String cloud_name;
  late String dominant_color;
  
  factory Useravatar.fromJson(Map<String,dynamic> json) => _$UseravatarFromJson(json);
  Map<String, dynamic> toJson() => _$UseravatarToJson(this);
}
