import 'package:json_annotation/json_annotation.dart';

part 'photoimage.g.dart';

@JsonSerializable()
class Photoimage {
  Photoimage();

  String? url;
  num? org_width;
  num? org_height;
  String? org_url;
  String? cloud_name;
  String? dominant_color;
  num? file_size;
  
  factory Photoimage.fromJson(Map<String,dynamic> json) => _$PhotoimageFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoimageToJson(this);
}
