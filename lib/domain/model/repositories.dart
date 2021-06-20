import 'package:flutter_api_sample/domain/model/repository_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repositories.freezed.dart';
part 'repositories.g.dart';

@freezed
abstract class Repositories with _$Repositories {
  const factory Repositories({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    required List<RepositoryItem> items,
  }) = _Repositories;

  factory Repositories.fromJson(Map<String, dynamic> json) =>
      _$RepositoriesFromJson(json);
}
