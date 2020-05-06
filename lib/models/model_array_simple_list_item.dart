import 'dart:convert';

import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model_array_simple_list_item.g.dart';

@JsonSerializable()
class ArraySimpleListItem {
  List<SimpleListItem> array;

  ArraySimpleListItem(this.array);

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory ArraySimpleListItem.fromJson(Map<String, dynamic> json) =>
      _$ArraySimpleListItemFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ArraySimpleListItemToJson(this);

  ArraySimpleListItem.fromJsonString(String jsonString) {
    ArraySimpleListItem.fromJson(json.decode(jsonString));
  }

  String toJsonString() {
    return json.encode(this.toJson());
  }
}
