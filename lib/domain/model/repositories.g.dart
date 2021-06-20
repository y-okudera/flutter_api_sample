// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repositories _$_$_RepositoriesFromJson(Map<String, dynamic> json) {
  return _$_Repositories(
    totalCount: json['total_count'] as int,
    incompleteResults: json['incomplete_results'] as bool,
    items: (json['items'] as List<dynamic>)
        .map((e) => RepositoryItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_RepositoriesToJson(_$_Repositories instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
