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

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory SimpleListItem.fromJson(Map<String, dynamic> json) =>
      _$SimpleListItemFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$SimpleListItemToJson(this);

//  SimpleListItem.fromJson(Map<dynamic, dynamic> data) {
//    name = data['name'];
//    description = data['description'];
//    url = data['url'];
//    String urlType = data['type'];
//    if (urlType == "phone") {
//      type = SimpleListItemType.phone;
//    } else {
//      type = SimpleListItemType.url;
//    }
//  }
//
//  Map<dynamic, dynamic> toJson() {
//    if (description != null) {
//      return {
//        'name': name,
//        'url': url,
//        'type': type == SimpleListItemType.phone ? "phone" : "url",
//      };
//    } else {
//      return {
//        'name': name,
//        'description': description,
//        'url': url,
//        'type': type == SimpleListItemType.phone ? "phone" : "url",
//      };
//    }
//  }
}

enum SimpleListItemType { url, phone }
