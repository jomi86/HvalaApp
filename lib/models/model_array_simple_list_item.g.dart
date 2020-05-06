// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_array_simple_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArraySimpleListItem _$ArraySimpleListItemFromJson(Map<String, dynamic> json) {
  return ArraySimpleListItem(
    (json['array'] as List)
        ?.map((e) => e == null
            ? null
            : SimpleListItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ArraySimpleListItemToJson(
        ArraySimpleListItem instance) =>
    <String, dynamic>{
      'array': instance.array,
    };
