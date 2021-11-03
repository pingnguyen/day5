import 'package:json_annotation/json_annotation.dart';

part 'paging.g.dart';

@JsonSerializable()
class Paging {
  Paging();

  String? next_cursor;
  String? cursor;
  num? limit;
  num? total;
  num? page;
  bool? has_next;
  
  factory Paging.fromJson(Map<String,dynamic> json) => _$PagingFromJson(json);
  Map<String, dynamic> toJson() => _$PagingToJson(this);
}
