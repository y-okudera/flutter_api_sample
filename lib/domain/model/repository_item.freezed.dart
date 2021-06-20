// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'repository_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryItem _$RepositoryItemFromJson(Map<String, dynamic> json) {
  return _RepositoryItem.fromJson(json);
}

/// @nodoc
class _$RepositoryItemTearOff {
  const _$RepositoryItemTearOff();

  _RepositoryItem call(
      {@JsonKey(name: 'full_name') required String fullName,
      @JsonKey(name: 'html_url') required String htmlUrl,
      @JsonKey(name: 'stargazers_count') required int stargazersCount,
      String? description,
      String? language}) {
    return _RepositoryItem(
      fullName: fullName,
      htmlUrl: htmlUrl,
      stargazersCount: stargazersCount,
      description: description,
      language: language,
    );
  }

  RepositoryItem fromJson(Map<String, Object> json) {
    return RepositoryItem.fromJson(json);
  }
}

/// @nodoc
const $RepositoryItem = _$RepositoryItemTearOff();

/// @nodoc
mixin _$RepositoryItem {
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // NULLが入る可能性があるためString?
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryItemCopyWith<RepositoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryItemCopyWith<$Res> {
  factory $RepositoryItemCopyWith(
          RepositoryItem value, $Res Function(RepositoryItem) then) =
      _$RepositoryItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      String? description,
      String? language});
}

/// @nodoc
class _$RepositoryItemCopyWithImpl<$Res>
    implements $RepositoryItemCopyWith<$Res> {
  _$RepositoryItemCopyWithImpl(this._value, this._then);

  final RepositoryItem _value;
  // ignore: unused_field
  final $Res Function(RepositoryItem) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? htmlUrl = freezed,
    Object? stargazersCount = freezed,
    Object? description = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RepositoryItemCopyWith<$Res>
    implements $RepositoryItemCopyWith<$Res> {
  factory _$RepositoryItemCopyWith(
          _RepositoryItem value, $Res Function(_RepositoryItem) then) =
      __$RepositoryItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      String? description,
      String? language});
}

/// @nodoc
class __$RepositoryItemCopyWithImpl<$Res>
    extends _$RepositoryItemCopyWithImpl<$Res>
    implements _$RepositoryItemCopyWith<$Res> {
  __$RepositoryItemCopyWithImpl(
      _RepositoryItem _value, $Res Function(_RepositoryItem) _then)
      : super(_value, (v) => _then(v as _RepositoryItem));

  @override
  _RepositoryItem get _value => super._value as _RepositoryItem;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? htmlUrl = freezed,
    Object? stargazersCount = freezed,
    Object? description = freezed,
    Object? language = freezed,
  }) {
    return _then(_RepositoryItem(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryItem implements _RepositoryItem {
  const _$_RepositoryItem(
      {@JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      this.description,
      this.language});

  factory _$_RepositoryItem.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryItemFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  final String? description;
  @override // NULLが入る可能性があるためString?
  final String? language;

  @override
  String toString() {
    return 'RepositoryItem(fullName: $fullName, htmlUrl: $htmlUrl, stargazersCount: $stargazersCount, description: $description, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoryItem &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.stargazersCount, stargazersCount) ||
                const DeepCollectionEquality()
                    .equals(other.stargazersCount, stargazersCount)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(stargazersCount) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$RepositoryItemCopyWith<_RepositoryItem> get copyWith =>
      __$RepositoryItemCopyWithImpl<_RepositoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryItemToJson(this);
  }
}

abstract class _RepositoryItem implements RepositoryItem {
  const factory _RepositoryItem(
      {@JsonKey(name: 'full_name') required String fullName,
      @JsonKey(name: 'html_url') required String htmlUrl,
      @JsonKey(name: 'stargazers_count') required int stargazersCount,
      String? description,
      String? language}) = _$_RepositoryItem;

  factory _RepositoryItem.fromJson(Map<String, dynamic> json) =
      _$_RepositoryItem.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override // NULLが入る可能性があるためString?
  String? get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepositoryItemCopyWith<_RepositoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
