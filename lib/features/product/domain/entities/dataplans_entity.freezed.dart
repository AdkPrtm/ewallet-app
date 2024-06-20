// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dataplans_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataPlansEntity {
  List<DataOperatorCardEntity>? get data => throw _privateConstructorUsedError;
  set data(List<DataOperatorCardEntity>? value) =>
      throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  set currentPage(int? value) => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  set lastPage(int? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataPlansEntityCopyWith<DataPlansEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPlansEntityCopyWith<$Res> {
  factory $DataPlansEntityCopyWith(
          DataPlansEntity value, $Res Function(DataPlansEntity) then) =
      _$DataPlansEntityCopyWithImpl<$Res, DataPlansEntity>;
  @useResult
  $Res call(
      {List<DataOperatorCardEntity>? data, int? currentPage, int? lastPage});
}

/// @nodoc
class _$DataPlansEntityCopyWithImpl<$Res, $Val extends DataPlansEntity>
    implements $DataPlansEntityCopyWith<$Res> {
  _$DataPlansEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataOperatorCardEntity>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPlansEntityImplCopyWith<$Res>
    implements $DataPlansEntityCopyWith<$Res> {
  factory _$$DataPlansEntityImplCopyWith(_$DataPlansEntityImpl value,
          $Res Function(_$DataPlansEntityImpl) then) =
      __$$DataPlansEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DataOperatorCardEntity>? data, int? currentPage, int? lastPage});
}

/// @nodoc
class __$$DataPlansEntityImplCopyWithImpl<$Res>
    extends _$DataPlansEntityCopyWithImpl<$Res, _$DataPlansEntityImpl>
    implements _$$DataPlansEntityImplCopyWith<$Res> {
  __$$DataPlansEntityImplCopyWithImpl(
      _$DataPlansEntityImpl _value, $Res Function(_$DataPlansEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$DataPlansEntityImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataOperatorCardEntity>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DataPlansEntityImpl implements _DataPlansEntity {
  _$DataPlansEntityImpl({this.data, this.currentPage, this.lastPage});

  @override
  List<DataOperatorCardEntity>? data;
  @override
  int? currentPage;
  @override
  int? lastPage;

  @override
  String toString() {
    return 'DataPlansEntity(data: $data, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPlansEntityImplCopyWith<_$DataPlansEntityImpl> get copyWith =>
      __$$DataPlansEntityImplCopyWithImpl<_$DataPlansEntityImpl>(
          this, _$identity);
}

abstract class _DataPlansEntity implements DataPlansEntity {
  factory _DataPlansEntity(
      {List<DataOperatorCardEntity>? data,
      int? currentPage,
      int? lastPage}) = _$DataPlansEntityImpl;

  @override
  List<DataOperatorCardEntity>? get data;
  set data(List<DataOperatorCardEntity>? value);
  @override
  int? get currentPage;
  set currentPage(int? value);
  @override
  int? get lastPage;
  set lastPage(int? value);
  @override
  @JsonKey(ignore: true)
  _$$DataPlansEntityImplCopyWith<_$DataPlansEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataOperatorCardEntity {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String? value) => throw _privateConstructorUsedError;
  List<DataPlansListEntity>? get dataPlans =>
      throw _privateConstructorUsedError;
  set dataPlans(List<DataPlansListEntity>? value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataOperatorCardEntityCopyWith<DataOperatorCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataOperatorCardEntityCopyWith<$Res> {
  factory $DataOperatorCardEntityCopyWith(DataOperatorCardEntity value,
          $Res Function(DataOperatorCardEntity) then) =
      _$DataOperatorCardEntityCopyWithImpl<$Res, DataOperatorCardEntity>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? status,
      String? thumbnail,
      List<DataPlansListEntity>? dataPlans});
}

/// @nodoc
class _$DataOperatorCardEntityCopyWithImpl<$Res,
        $Val extends DataOperatorCardEntity>
    implements $DataOperatorCardEntityCopyWith<$Res> {
  _$DataOperatorCardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? thumbnail = freezed,
    Object? dataPlans = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      dataPlans: freezed == dataPlans
          ? _value.dataPlans
          : dataPlans // ignore: cast_nullable_to_non_nullable
              as List<DataPlansListEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataOperatorCardEntityImplCopyWith<$Res>
    implements $DataOperatorCardEntityCopyWith<$Res> {
  factory _$$DataOperatorCardEntityImplCopyWith(
          _$DataOperatorCardEntityImpl value,
          $Res Function(_$DataOperatorCardEntityImpl) then) =
      __$$DataOperatorCardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? status,
      String? thumbnail,
      List<DataPlansListEntity>? dataPlans});
}

/// @nodoc
class __$$DataOperatorCardEntityImplCopyWithImpl<$Res>
    extends _$DataOperatorCardEntityCopyWithImpl<$Res,
        _$DataOperatorCardEntityImpl>
    implements _$$DataOperatorCardEntityImplCopyWith<$Res> {
  __$$DataOperatorCardEntityImplCopyWithImpl(
      _$DataOperatorCardEntityImpl _value,
      $Res Function(_$DataOperatorCardEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? thumbnail = freezed,
    Object? dataPlans = freezed,
  }) {
    return _then(_$DataOperatorCardEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      dataPlans: freezed == dataPlans
          ? _value.dataPlans
          : dataPlans // ignore: cast_nullable_to_non_nullable
              as List<DataPlansListEntity>?,
    ));
  }
}

/// @nodoc

class _$DataOperatorCardEntityImpl implements _DataOperatorCardEntity {
  _$DataOperatorCardEntityImpl(
      {this.id, this.name, this.status, this.thumbnail, this.dataPlans});

  @override
  String? id;
  @override
  String? name;
  @override
  String? status;
  @override
  String? thumbnail;
  @override
  List<DataPlansListEntity>? dataPlans;

  @override
  String toString() {
    return 'DataOperatorCardEntity(id: $id, name: $name, status: $status, thumbnail: $thumbnail, dataPlans: $dataPlans)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataOperatorCardEntityImplCopyWith<_$DataOperatorCardEntityImpl>
      get copyWith => __$$DataOperatorCardEntityImplCopyWithImpl<
          _$DataOperatorCardEntityImpl>(this, _$identity);
}

abstract class _DataOperatorCardEntity implements DataOperatorCardEntity {
  factory _DataOperatorCardEntity(
      {String? id,
      String? name,
      String? status,
      String? thumbnail,
      List<DataPlansListEntity>? dataPlans}) = _$DataOperatorCardEntityImpl;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get status;
  set status(String? value);
  @override
  String? get thumbnail;
  set thumbnail(String? value);
  @override
  List<DataPlansListEntity>? get dataPlans;
  set dataPlans(List<DataPlansListEntity>? value);
  @override
  @JsonKey(ignore: true)
  _$$DataOperatorCardEntityImplCopyWith<_$DataOperatorCardEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataPlansListEntity {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  set price(int? value) => throw _privateConstructorUsedError;
  String? get operatorCardId => throw _privateConstructorUsedError;
  set operatorCardId(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataPlansListEntityCopyWith<DataPlansListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPlansListEntityCopyWith<$Res> {
  factory $DataPlansListEntityCopyWith(
          DataPlansListEntity value, $Res Function(DataPlansListEntity) then) =
      _$DataPlansListEntityCopyWithImpl<$Res, DataPlansListEntity>;
  @useResult
  $Res call({String? id, String? name, int? price, String? operatorCardId});
}

/// @nodoc
class _$DataPlansListEntityCopyWithImpl<$Res, $Val extends DataPlansListEntity>
    implements $DataPlansListEntityCopyWith<$Res> {
  _$DataPlansListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? operatorCardId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorCardId: freezed == operatorCardId
          ? _value.operatorCardId
          : operatorCardId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPlansListEntityImplCopyWith<$Res>
    implements $DataPlansListEntityCopyWith<$Res> {
  factory _$$DataPlansListEntityImplCopyWith(_$DataPlansListEntityImpl value,
          $Res Function(_$DataPlansListEntityImpl) then) =
      __$$DataPlansListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, int? price, String? operatorCardId});
}

/// @nodoc
class __$$DataPlansListEntityImplCopyWithImpl<$Res>
    extends _$DataPlansListEntityCopyWithImpl<$Res, _$DataPlansListEntityImpl>
    implements _$$DataPlansListEntityImplCopyWith<$Res> {
  __$$DataPlansListEntityImplCopyWithImpl(_$DataPlansListEntityImpl _value,
      $Res Function(_$DataPlansListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? operatorCardId = freezed,
  }) {
    return _then(_$DataPlansListEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorCardId: freezed == operatorCardId
          ? _value.operatorCardId
          : operatorCardId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataPlansListEntityImpl implements _DataPlansListEntity {
  _$DataPlansListEntityImpl(
      {this.id, this.name, this.price, this.operatorCardId});

  @override
  String? id;
  @override
  String? name;
  @override
  int? price;
  @override
  String? operatorCardId;

  @override
  String toString() {
    return 'DataPlansListEntity(id: $id, name: $name, price: $price, operatorCardId: $operatorCardId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPlansListEntityImplCopyWith<_$DataPlansListEntityImpl> get copyWith =>
      __$$DataPlansListEntityImplCopyWithImpl<_$DataPlansListEntityImpl>(
          this, _$identity);
}

abstract class _DataPlansListEntity implements DataPlansListEntity {
  factory _DataPlansListEntity(
      {String? id,
      String? name,
      int? price,
      String? operatorCardId}) = _$DataPlansListEntityImpl;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  int? get price;
  set price(int? value);
  @override
  String? get operatorCardId;
  set operatorCardId(String? value);
  @override
  @JsonKey(ignore: true)
  _$$DataPlansListEntityImplCopyWith<_$DataPlansListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
