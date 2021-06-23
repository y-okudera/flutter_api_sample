import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repo_item.freezed.dart';
part 'repo_item.g.dart';

@freezed
abstract class RepoItem with _$RepoItem {
  const factory RepoItem({
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    String? description, // NULLが入る可能性があるためString?
    String? language, // NULLが入る可能性があるためString?
  }) = _RepoItem;

  factory RepoItem.fromJson(Map<String, dynamic> json) =>
      _$RepoItemFromJson(json);
}
