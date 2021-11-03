import 'package:json_annotation/json_annotation.dart';

part 'photouseravatar.g.dart';

@JsonSerializable()
class Photouseravatar {
  Photouseravatar();

  String? url;
  num? org_width;
  num? org_height;
  String? org_url;
  String? cloud_name;
  String? dominant_color;
  
  factory Photouseravatar.fromJson(Map<String,dynamic> json) => _$PhotouseravatarFromJson(json);
  Map<String, dynamic> toJson() => _$PhotouseravatarToJson(this);
}
