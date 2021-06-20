import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repository_item.freezed.dart';
part 'repository_item.g.dart';

@freezed
abstract class RepositoryItem with _$RepositoryItem {
  const factory RepositoryItem({
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    String? description, // NULLが入る可能性があるためString?
    String? language, // NULLが入る可能性があるためString?
  }) = _RepositoryItem;

  factory RepositoryItem.fromJson(Map<String, dynamic> json) =>
      _$RepositoryItemFromJson(json);
}
