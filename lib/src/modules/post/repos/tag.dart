import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  Tag();

  late String phucmodoro;
  late String nhatrang;
  late String bien;
  late String phongcanh;
  
  factory Tag.fromJson(Map<String,dynamic> json) => _$TagFromJson(json);
  Map<String, dynamic> toJson() => _$TagToJson(this);
}
