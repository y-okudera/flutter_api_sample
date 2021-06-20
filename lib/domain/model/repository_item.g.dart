// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryItem _$_$_RepositoryItemFromJson(Map<String, dynamic> json) {
  return _$_RepositoryItem(
    fullName: json['full_name'] as String,
    htmlUrl: json['html_url'] as String,
    stargazersCount: json['stargazers_count'] as int,
    description: json['description'] as String?,
    language: json['language'] as String?,
  );
}

Map<String, dynamic> _$_$_RepositoryItemToJson(_$_RepositoryItem instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'html_url': instance.htmlUrl,
      'stargazers_count': instance.stargazersCount,
      'description': instance.description,
      'language': instance.language,
    };
