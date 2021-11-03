import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  Image();

  String? id;
  String? url;
  num? org_width;
  num? org_height;
  String? org_url;
  String? cloud_name;
  String? dominant_color;
  num? file_size;
  
  factory Image.fromJson(Map<String,dynamic> json) => _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
