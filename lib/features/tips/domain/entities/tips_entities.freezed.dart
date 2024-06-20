// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tips_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TipsResponseEntity {
  int? get currentPage => throw _privateConstructorUsedError;
  set currentPage(int? value) => throw _privateConstructorUsedError;
  List<DataTipsEntity>? get data => throw _privateConstructorUsedError;
  set data(List<DataTipsEntity>? value) => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  set lastPage(int? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipsResponseEntityCopyWith<TipsResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsResponseEntityCopyWith<$Res> {
  factory $TipsResponseEntityCopyWith(
          TipsResponseEntity value, $Res Function(TipsResponseEntity) then) =
      _$TipsResponseEntityCopyWithImpl<$Res, TipsResponseEntity>;
  @useResult
  $Res call({int? currentPage, List<DataTipsEntity>? data, int? lastPage});
}

/// @nodoc
class _$TipsResponseEntityCopyWithImpl<$Res, $Val extends TipsResponseEntity>
    implements $TipsResponseEntityCopyWith<$Res> {
  _$TipsResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTipsEntity>?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipsResponseEntityImplCopyWith<$Res>
    implements $TipsResponseEntityCopyWith<$Res> {
  factory _$$TipsResponseEntityImplCopyWith(_$TipsResponseEntityImpl value,
          $Res Function(_$TipsResponseEntityImpl) then) =
      __$$TipsResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentPage, List<DataTipsEntity>? data, int? lastPage});
}

/// @nodoc
class __$$TipsResponseEntityImplCopyWithImpl<$Res>
    extends _$TipsResponseEntityCopyWithImpl<$Res, _$TipsResponseEntityImpl>
    implements _$$TipsResponseEntityImplCopyWith<$Res> {
  __$$TipsResponseEntityImplCopyWithImpl(_$TipsResponseEntityImpl _value,
      $Res Function(_$TipsResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$TipsResponseEntityImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTipsEntity>?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TipsResponseEntityImpl implements _TipsResponseEntity {
  _$TipsResponseEntityImpl({this.currentPage, this.data, this.lastPage});

  @override
  int? currentPage;
  @override
  List<DataTipsEntity>? data;
  @override
  int? lastPage;

  @override
  String toString() {
    return 'TipsResponseEntity(currentPage: $currentPage, data: $data, lastPage: $lastPage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipsResponseEntityImplCopyWith<_$TipsResponseEntityImpl> get copyWith =>
      __$$TipsResponseEntityImplCopyWithImpl<_$TipsResponseEntityImpl>(
          this, _$identity);
}

abstract class _TipsResponseEntity implements TipsResponseEntity {
  factory _TipsResponseEntity(
      {int? currentPage,
      List<DataTipsEntity>? data,
      int? lastPage}) = _$TipsResponseEntityImpl;

  @override
  int? get currentPage;
  set currentPage(int? value);
  @override
  List<DataTipsEntity>? get data;
  set data(List<DataTipsEntity>? value);
  @override
  int? get lastPage;
  set lastPage(int? value);
  @override
  @JsonKey(ignore: true)
  _$$TipsResponseEntityImplCopyWith<_$TipsResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataTipsEntity {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataTipsEntityCopyWith<DataTipsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTipsEntityCopyWith<$Res> {
  factory $DataTipsEntityCopyWith(
          DataTipsEntity value, $Res Function(DataTipsEntity) then) =
      _$DataTipsEntityCopyWithImpl<$Res, DataTipsEntity>;
  @useResult
  $Res call({String? id, String? title, String? url, String? thumbnail});
}

/// @nodoc
class _$DataTipsEntityCopyWithImpl<$Res, $Val extends DataTipsEntity>
    implements $DataTipsEntityCopyWith<$Res> {
  _$DataTipsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataTipsEntityImplCopyWith<$Res>
    implements $DataTipsEntityCopyWith<$Res> {
  factory _$$DataTipsEntityImplCopyWith(_$DataTipsEntityImpl value,
          $Res Function(_$DataTipsEntityImpl) then) =
      __$$DataTipsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? url, String? thumbnail});
}

/// @nodoc
class __$$DataTipsEntityImplCopyWithImpl<$Res>
    extends _$DataTipsEntityCopyWithImpl<$Res, _$DataTipsEntityImpl>
    implements _$$DataTipsEntityImplCopyWith<$Res> {
  __$$DataTipsEntityImplCopyWithImpl(
      _$DataTipsEntityImpl _value, $Res Function(_$DataTipsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$DataTipsEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataTipsEntityImpl implements _DataTipsEntity {
  _$DataTipsEntityImpl({this.id, this.title, this.url, this.thumbnail});

  @override
  String? id;
  @override
  String? title;
  @override
  String? url;
  @override
  String? thumbnail;

  @override
  String toString() {
    return 'DataTipsEntity(id: $id, title: $title, url: $url, thumbnail: $thumbnail)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataTipsEntityImplCopyWith<_$DataTipsEntityImpl> get copyWith =>
      __$$DataTipsEntityImplCopyWithImpl<_$DataTipsEntityImpl>(
          this, _$identity);
}

abstract class _DataTipsEntity implements DataTipsEntity {
  factory _DataTipsEntity(
      {String? id,
      String? title,
      String? url,
      String? thumbnail}) = _$DataTipsEntityImpl;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get url;
  set url(String? value);
  @override
  String? get thumbnail;
  set thumbnail(String? value);
  @override
  @JsonKey(ignore: true)
  _$$DataTipsEntityImplCopyWith<_$DataTipsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
