import 'package:flutter_api_sample/domain/models/repo_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repo_items.freezed.dart';
part 'repo_items.g.dart';

@freezed
abstract class RepoItems with _$RepoItems {
  const factory RepoItems({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    required List<RepoItem> items,
  }) = _RepoItems;

  factory RepoItems.fromJson(Map<String, dynamic> json) =>
      _$RepoItemsFromJson(json);
}
