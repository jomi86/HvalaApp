import 'package:json_annotation/json_annotation.dart';

part 'model_simple_list_item.g.dart';

@JsonSerializable()
class SimpleListItem {
  @JsonKey(required: true)
  String name;
  @JsonKey(defaultValue: "")
  String description;
  @JsonKey(required: true)
  String url;
  SimpleListItemType type;

  SimpleListItem(this.name, this.description, this.url, this.type);

  @override
  String toString() {
    return name;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleListItem &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          url == other.url;

  @override
  int get hashCode => name.hashCode ^ url.hashCode;

  factory SimpleListItem.fromJson(Map<String, dynamic> json) =>
      _$SimpleListItemFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleListItemToJson(this);
}

enum SimpleListItemType { url, phone }
