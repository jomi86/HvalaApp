import 'dart:convert';

import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model_array_simple_list_item.g.dart';

@JsonSerializable()
class ArraySimpleListItem {
  List<SimpleListItem> array;

  ArraySimpleListItem(this.array);

  factory ArraySimpleListItem.fromJson(Map<String, dynamic> json) =>
      _$ArraySimpleListItemFromJson(json);

  Map<String, dynamic> toJson() => _$ArraySimpleListItemToJson(this);

  ArraySimpleListItem.fromJsonString(String jsonString) {
    ArraySimpleListItem.fromJson(json.decode(jsonString));
  }

  String toJsonString() {
    return json.encode(this.toJson());
  }
}
