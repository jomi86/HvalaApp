// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_simple_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleListItem _$SimpleListItemFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['name', 'url']);
  return SimpleListItem(
    json['name'] as String,
    json['description'] as String ?? '',
    json['url'] as String,
    _$enumDecodeNullable(_$SimpleListItemTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$SimpleListItemToJson(SimpleListItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'type': _$SimpleListItemTypeEnumMap[instance.type],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$SimpleListItemTypeEnumMap = {
  SimpleListItemType.url: 'url',
  SimpleListItemType.phone: 'phone',
};
