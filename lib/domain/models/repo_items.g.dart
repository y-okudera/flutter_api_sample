// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepoItems _$_$_RepoItemsFromJson(Map<String, dynamic> json) {
  return _$_RepoItems(
    totalCount: json['total_count'] as int,
    incompleteResults: json['incomplete_results'] as bool,
    items: (json['items'] as List<dynamic>)
        .map((e) => RepoItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_RepoItemsToJson(_$_RepoItems instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
