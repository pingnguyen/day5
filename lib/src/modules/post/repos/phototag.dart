import 'package:json_annotation/json_annotation.dart';

part 'phototag.g.dart';

@JsonSerializable()
class Phototag {
  Phototag();

  String? phucmodoro;
  String? nhatrang;
  String? bien;
  String? phongcanh;
  
  factory Phototag.fromJson(Map<String,dynamic> json) => _$PhototagFromJson(json);
  Map<String, dynamic> toJson() => _$PhototagToJson(this);
}
