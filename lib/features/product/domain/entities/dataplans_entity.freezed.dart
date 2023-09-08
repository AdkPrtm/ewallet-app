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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataPlansEntity {
  int? get currentPage => throw _privateConstructorUsedError;
  set currentPage(int? value) => throw _privateConstructorUsedError;
  List<DataOperatorCardEntity>? get data => throw _privateConstructorUsedError;
  set data(List<DataOperatorCardEntity>? value) =>
      throw _privateConstructorUsedError;
  String? get firstPageUrl => throw _privateConstructorUsedError;
  set firstPageUrl(String? value) => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  set from(int? value) => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  set lastPage(int? value) => throw _privateConstructorUsedError;
  String? get lastPageUrl => throw _privateConstructorUsedError;
  set lastPageUrl(String? value) => throw _privateConstructorUsedError;
  List<LinkDataPlansEntity>? get links => throw _privateConstructorUsedError;
  set links(List<LinkDataPlansEntity>? value) =>
      throw _privateConstructorUsedError;
  String? get nextPageUrl => throw _privateConstructorUsedError;
  set nextPageUrl(String? value) => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  set path(String? value) => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  set perPage(int? value) => throw _privateConstructorUsedError;
  String? get prevPageUrl => throw _privateConstructorUsedError;
  set prevPageUrl(String? value) => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  set to(int? value) => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  set total(int? value) => throw _privateConstructorUsedError;

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
      {int? currentPage,
      List<DataOperatorCardEntity>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<LinkDataPlansEntity>? links,
      String? nextPageUrl,
      String? path,
      int? perPage,
      String? prevPageUrl,
      int? to,
      int? total});
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
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataOperatorCardEntity>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkDataPlansEntity>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataPlansEntityCopyWith<$Res>
    implements $DataPlansEntityCopyWith<$Res> {
  factory _$$_DataPlansEntityCopyWith(
          _$_DataPlansEntity value, $Res Function(_$_DataPlansEntity) then) =
      __$$_DataPlansEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      List<DataOperatorCardEntity>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<LinkDataPlansEntity>? links,
      String? nextPageUrl,
      String? path,
      int? perPage,
      String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_DataPlansEntityCopyWithImpl<$Res>
    extends _$DataPlansEntityCopyWithImpl<$Res, _$_DataPlansEntity>
    implements _$$_DataPlansEntityCopyWith<$Res> {
  __$$_DataPlansEntityCopyWithImpl(
      _$_DataPlansEntity _value, $Res Function(_$_DataPlansEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_DataPlansEntity(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataOperatorCardEntity>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkDataPlansEntity>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DataPlansEntity implements _DataPlansEntity {
  _$_DataPlansEntity(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  @override
  int? currentPage;
  @override
  List<DataOperatorCardEntity>? data;
  @override
  String? firstPageUrl;
  @override
  int? from;
  @override
  int? lastPage;
  @override
  String? lastPageUrl;
  @override
  List<LinkDataPlansEntity>? links;
  @override
  String? nextPageUrl;
  @override
  String? path;
  @override
  int? perPage;
  @override
  String? prevPageUrl;
  @override
  int? to;
  @override
  int? total;

  @override
  String toString() {
    return 'DataPlansEntity(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataPlansEntityCopyWith<_$_DataPlansEntity> get copyWith =>
      __$$_DataPlansEntityCopyWithImpl<_$_DataPlansEntity>(this, _$identity);
}

abstract class _DataPlansEntity implements DataPlansEntity {
  factory _DataPlansEntity(
      {int? currentPage,
      List<DataOperatorCardEntity>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<LinkDataPlansEntity>? links,
      String? nextPageUrl,
      String? path,
      int? perPage,
      String? prevPageUrl,
      int? to,
      int? total}) = _$_DataPlansEntity;

  @override
  int? get currentPage;
  set currentPage(int? value);
  @override
  List<DataOperatorCardEntity>? get data;
  set data(List<DataOperatorCardEntity>? value);
  @override
  String? get firstPageUrl;
  set firstPageUrl(String? value);
  @override
  int? get from;
  set from(int? value);
  @override
  int? get lastPage;
  set lastPage(int? value);
  @override
  String? get lastPageUrl;
  set lastPageUrl(String? value);
  @override
  List<LinkDataPlansEntity>? get links;
  set links(List<LinkDataPlansEntity>? value);
  @override
  String? get nextPageUrl;
  set nextPageUrl(String? value);
  @override
  String? get path;
  set path(String? value);
  @override
  int? get perPage;
  set perPage(int? value);
  @override
  String? get prevPageUrl;
  set prevPageUrl(String? value);
  @override
  int? get to;
  set to(int? value);
  @override
  int? get total;
  set total(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_DataPlansEntityCopyWith<_$_DataPlansEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataOperatorCardEntity {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
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
      {int? id,
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
              as int?,
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
abstract class _$$_DataOperatorCardEntityCopyWith<$Res>
    implements $DataOperatorCardEntityCopyWith<$Res> {
  factory _$$_DataOperatorCardEntityCopyWith(_$_DataOperatorCardEntity value,
          $Res Function(_$_DataOperatorCardEntity) then) =
      __$$_DataOperatorCardEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? thumbnail,
      List<DataPlansListEntity>? dataPlans});
}

/// @nodoc
class __$$_DataOperatorCardEntityCopyWithImpl<$Res>
    extends _$DataOperatorCardEntityCopyWithImpl<$Res,
        _$_DataOperatorCardEntity>
    implements _$$_DataOperatorCardEntityCopyWith<$Res> {
  __$$_DataOperatorCardEntityCopyWithImpl(_$_DataOperatorCardEntity _value,
      $Res Function(_$_DataOperatorCardEntity) _then)
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
    return _then(_$_DataOperatorCardEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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

class _$_DataOperatorCardEntity implements _DataOperatorCardEntity {
  _$_DataOperatorCardEntity(
      {this.id, this.name, this.status, this.thumbnail, this.dataPlans});

  @override
  int? id;
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
  _$$_DataOperatorCardEntityCopyWith<_$_DataOperatorCardEntity> get copyWith =>
      __$$_DataOperatorCardEntityCopyWithImpl<_$_DataOperatorCardEntity>(
          this, _$identity);
}

abstract class _DataOperatorCardEntity implements DataOperatorCardEntity {
  factory _DataOperatorCardEntity(
      {int? id,
      String? name,
      String? status,
      String? thumbnail,
      List<DataPlansListEntity>? dataPlans}) = _$_DataOperatorCardEntity;

  @override
  int? get id;
  set id(int? value);
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
  _$$_DataOperatorCardEntityCopyWith<_$_DataOperatorCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataPlansListEntity {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  set price(String? value) => throw _privateConstructorUsedError;
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
  $Res call({int? id, String? name, String? price, String? operatorCardId});
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
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      operatorCardId: freezed == operatorCardId
          ? _value.operatorCardId
          : operatorCardId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataPlansListEntityCopyWith<$Res>
    implements $DataPlansListEntityCopyWith<$Res> {
  factory _$$_DataPlansListEntityCopyWith(_$_DataPlansListEntity value,
          $Res Function(_$_DataPlansListEntity) then) =
      __$$_DataPlansListEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? price, String? operatorCardId});
}

/// @nodoc
class __$$_DataPlansListEntityCopyWithImpl<$Res>
    extends _$DataPlansListEntityCopyWithImpl<$Res, _$_DataPlansListEntity>
    implements _$$_DataPlansListEntityCopyWith<$Res> {
  __$$_DataPlansListEntityCopyWithImpl(_$_DataPlansListEntity _value,
      $Res Function(_$_DataPlansListEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? operatorCardId = freezed,
  }) {
    return _then(_$_DataPlansListEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      operatorCardId: freezed == operatorCardId
          ? _value.operatorCardId
          : operatorCardId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataPlansListEntity implements _DataPlansListEntity {
  _$_DataPlansListEntity({this.id, this.name, this.price, this.operatorCardId});

  @override
  int? id;
  @override
  String? name;
  @override
  String? price;
  @override
  String? operatorCardId;

  @override
  String toString() {
    return 'DataPlansListEntity(id: $id, name: $name, price: $price, operatorCardId: $operatorCardId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataPlansListEntityCopyWith<_$_DataPlansListEntity> get copyWith =>
      __$$_DataPlansListEntityCopyWithImpl<_$_DataPlansListEntity>(
          this, _$identity);
}

abstract class _DataPlansListEntity implements DataPlansListEntity {
  factory _DataPlansListEntity(
      {int? id,
      String? name,
      String? price,
      String? operatorCardId}) = _$_DataPlansListEntity;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get price;
  set price(String? value);
  @override
  String? get operatorCardId;
  set operatorCardId(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_DataPlansListEntityCopyWith<_$_DataPlansListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LinkDataPlansEntity {
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  set label(String? value) => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  set active(bool? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkDataPlansEntityCopyWith<LinkDataPlansEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkDataPlansEntityCopyWith<$Res> {
  factory $LinkDataPlansEntityCopyWith(
          LinkDataPlansEntity value, $Res Function(LinkDataPlansEntity) then) =
      _$LinkDataPlansEntityCopyWithImpl<$Res, LinkDataPlansEntity>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkDataPlansEntityCopyWithImpl<$Res, $Val extends LinkDataPlansEntity>
    implements $LinkDataPlansEntityCopyWith<$Res> {
  _$LinkDataPlansEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkDataPlansEntityCopyWith<$Res>
    implements $LinkDataPlansEntityCopyWith<$Res> {
  factory _$$_LinkDataPlansEntityCopyWith(_$_LinkDataPlansEntity value,
          $Res Function(_$_LinkDataPlansEntity) then) =
      __$$_LinkDataPlansEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_LinkDataPlansEntityCopyWithImpl<$Res>
    extends _$LinkDataPlansEntityCopyWithImpl<$Res, _$_LinkDataPlansEntity>
    implements _$$_LinkDataPlansEntityCopyWith<$Res> {
  __$$_LinkDataPlansEntityCopyWithImpl(_$_LinkDataPlansEntity _value,
      $Res Function(_$_LinkDataPlansEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_LinkDataPlansEntity(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LinkDataPlansEntity implements _LinkDataPlansEntity {
  _$_LinkDataPlansEntity({this.url, this.label, this.active});

  @override
  String? url;
  @override
  String? label;
  @override
  bool? active;

  @override
  String toString() {
    return 'LinkDataPlansEntity(url: $url, label: $label, active: $active)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkDataPlansEntityCopyWith<_$_LinkDataPlansEntity> get copyWith =>
      __$$_LinkDataPlansEntityCopyWithImpl<_$_LinkDataPlansEntity>(
          this, _$identity);
}

abstract class _LinkDataPlansEntity implements LinkDataPlansEntity {
  factory _LinkDataPlansEntity({String? url, String? label, bool? active}) =
      _$_LinkDataPlansEntity;

  @override
  String? get url;
  set url(String? value);
  @override
  String? get label;
  set label(String? value);
  @override
  bool? get active;
  set active(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$_LinkDataPlansEntityCopyWith<_$_LinkDataPlansEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
