// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'repositories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repositories _$RepositoriesFromJson(Map<String, dynamic> json) {
  return _Repositories.fromJson(json);
}

/// @nodoc
class _$RepositoriesTearOff {
  const _$RepositoriesTearOff();

  _Repositories call(
      {@JsonKey(name: 'total_count') required int totalCount,
      @JsonKey(name: 'incomplete_results') required bool incompleteResults,
      required List<RepositoryItem> items}) {
    return _Repositories(
      totalCount: totalCount,
      incompleteResults: incompleteResults,
      items: items,
    );
  }

  Repositories fromJson(Map<String, Object> json) {
    return Repositories.fromJson(json);
  }
}

/// @nodoc
const $Repositories = _$RepositoriesTearOff();

/// @nodoc
mixin _$Repositories {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<RepositoryItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoriesCopyWith<Repositories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoriesCopyWith<$Res> {
  factory $RepositoriesCopyWith(
          Repositories value, $Res Function(Repositories) then) =
      _$RepositoriesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<RepositoryItem> items});
}

/// @nodoc
class _$RepositoriesCopyWithImpl<$Res> implements $RepositoriesCopyWith<$Res> {
  _$RepositoriesCopyWithImpl(this._value, this._then);

  final Repositories _value;
  // ignore: unused_field
  final $Res Function(Repositories) _then;

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
              as List<RepositoryItem>,
    ));
  }
}

/// @nodoc
abstract class _$RepositoriesCopyWith<$Res>
    implements $RepositoriesCopyWith<$Res> {
  factory _$RepositoriesCopyWith(
          _Repositories value, $Res Function(_Repositories) then) =
      __$RepositoriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<RepositoryItem> items});
}

/// @nodoc
class __$RepositoriesCopyWithImpl<$Res> extends _$RepositoriesCopyWithImpl<$Res>
    implements _$RepositoriesCopyWith<$Res> {
  __$RepositoriesCopyWithImpl(
      _Repositories _value, $Res Function(_Repositories) _then)
      : super(_value, (v) => _then(v as _Repositories));

  @override
  _Repositories get _value => super._value as _Repositories;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_Repositories(
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
              as List<RepositoryItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repositories implements _Repositories {
  const _$_Repositories(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') required this.incompleteResults,
      required this.items});

  factory _$_Repositories.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoriesFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  @override
  final List<RepositoryItem> items;

  @override
  String toString() {
    return 'Repositories(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Repositories &&
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
  _$RepositoriesCopyWith<_Repositories> get copyWith =>
      __$RepositoriesCopyWithImpl<_Repositories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoriesToJson(this);
  }
}

abstract class _Repositories implements Repositories {
  const factory _Repositories(
      {@JsonKey(name: 'total_count') required int totalCount,
      @JsonKey(name: 'incomplete_results') required bool incompleteResults,
      required List<RepositoryItem> items}) = _$_Repositories;

  factory _Repositories.fromJson(Map<String, dynamic> json) =
      _$_Repositories.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @override
  List<RepositoryItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepositoriesCopyWith<_Repositories> get copyWith =>
      throw _privateConstructorUsedError;
}
