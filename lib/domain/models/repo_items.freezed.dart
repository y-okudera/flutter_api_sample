// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'repo_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepoItems _$RepoItemsFromJson(Map<String, dynamic> json) {
  return _RepoItems.fromJson(json);
}

/// @nodoc
class _$RepoItemsTearOff {
  const _$RepoItemsTearOff();

  _RepoItems call(
      {@JsonKey(name: 'total_count') required int totalCount,
      @JsonKey(name: 'incomplete_results') required bool incompleteResults,
      required List<RepoItem> items}) {
    return _RepoItems(
      totalCount: totalCount,
      incompleteResults: incompleteResults,
      items: items,
    );
  }

  RepoItems fromJson(Map<String, Object> json) {
    return RepoItems.fromJson(json);
  }
}

/// @nodoc
const $RepoItems = _$RepoItemsTearOff();

/// @nodoc
mixin _$RepoItems {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<RepoItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoItemsCopyWith<RepoItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoItemsCopyWith<$Res> {
  factory $RepoItemsCopyWith(RepoItems value, $Res Function(RepoItems) then) =
      _$RepoItemsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<RepoItem> items});
}

/// @nodoc
class _$RepoItemsCopyWithImpl<$Res> implements $RepoItemsCopyWith<$Res> {
  _$RepoItemsCopyWithImpl(this._value, this._then);

  final RepoItems _value;
  // ignore: unused_field
  final $Res Function(RepoItems) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepoItem>,
    ));
  }
}

/// @nodoc
abstract class _$RepoItemsCopyWith<$Res> implements $RepoItemsCopyWith<$Res> {
  factory _$RepoItemsCopyWith(
          _RepoItems value, $Res Function(_RepoItems) then) =
      __$RepoItemsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<RepoItem> items});
}

/// @nodoc
class __$RepoItemsCopyWithImpl<$Res> extends _$RepoItemsCopyWithImpl<$Res>
    implements _$RepoItemsCopyWith<$Res> {
  __$RepoItemsCopyWithImpl(_RepoItems _value, $Res Function(_RepoItems) _then)
      : super(_value, (v) => _then(v as _RepoItems));

  @override
  _RepoItems get _value => super._value as _RepoItems;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_RepoItems(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepoItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepoItems implements _RepoItems {
  const _$_RepoItems(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') required this.incompleteResults,
      required this.items});

  factory _$_RepoItems.fromJson(Map<String, dynamic> json) =>
      _$_$_RepoItemsFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  @override
  final List<RepoItem> items;

  @override
  String toString() {
    return 'RepoItems(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepoItems &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.incompleteResults, incompleteResults) ||
                const DeepCollectionEquality()
                    .equals(other.incompleteResults, incompleteResults)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(incompleteResults) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$RepoItemsCopyWith<_RepoItems> get copyWith =>
      __$RepoItemsCopyWithImpl<_RepoItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepoItemsToJson(this);
  }
}

abstract class _RepoItems implements RepoItems {
  const factory _RepoItems(
      {@JsonKey(name: 'total_count') required int totalCount,
      @JsonKey(name: 'incomplete_results') required bool incompleteResults,
      required List<RepoItem> items}) = _$_RepoItems;

  factory _RepoItems.fromJson(Map<String, dynamic> json) =
      _$_RepoItems.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @override
  List<RepoItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepoItemsCopyWith<_RepoItems> get copyWith =>
      throw _privateConstructorUsedError;
}
