// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dataplans_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataPlansResponse _$DataPlansResponseFromJson(Map<String, dynamic> json) {
  return _DataPlansResponse.fromJson(json);
}

/// @nodoc
mixin _$DataPlansResponse {
  List<DataOpertorCardResponse>? get data => throw _privateConstructorUsedError;
  set data(List<DataOpertorCardResponse>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  set currentPage(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  set lastPage(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPlansResponseCopyWith<DataPlansResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPlansResponseCopyWith<$Res> {
  factory $DataPlansResponseCopyWith(
          DataPlansResponse value, $Res Function(DataPlansResponse) then) =
      _$DataPlansResponseCopyWithImpl<$Res, DataPlansResponse>;
  @useResult
  $Res call(
      {List<DataOpertorCardResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$DataPlansResponseCopyWithImpl<$Res, $Val extends DataPlansResponse>
    implements $DataPlansResponseCopyWith<$Res> {
  _$DataPlansResponseCopyWithImpl(this._value, this._then);

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
              as List<DataOpertorCardResponse>?,
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
abstract class _$$DataPlansResponseImplCopyWith<$Res>
    implements $DataPlansResponseCopyWith<$Res> {
  factory _$$DataPlansResponseImplCopyWith(_$DataPlansResponseImpl value,
          $Res Function(_$DataPlansResponseImpl) then) =
      __$$DataPlansResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DataOpertorCardResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$DataPlansResponseImplCopyWithImpl<$Res>
    extends _$DataPlansResponseCopyWithImpl<$Res, _$DataPlansResponseImpl>
    implements _$$DataPlansResponseImplCopyWith<$Res> {
  __$$DataPlansResponseImplCopyWithImpl(_$DataPlansResponseImpl _value,
      $Res Function(_$DataPlansResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$DataPlansResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataOpertorCardResponse>?,
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
@JsonSerializable()
class _$DataPlansResponseImpl extends _DataPlansResponse {
  _$DataPlansResponseImpl(
      {this.data,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'last_page') this.lastPage})
      : super._();

  factory _$DataPlansResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPlansResponseImplFromJson(json);

  @override
  List<DataOpertorCardResponse>? data;
  @override
  @JsonKey(name: 'current_page')
  int? currentPage;
  @override
  @JsonKey(name: 'last_page')
  int? lastPage;

  @override
  String toString() {
    return 'DataPlansResponse(data: $data, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPlansResponseImplCopyWith<_$DataPlansResponseImpl> get copyWith =>
      __$$DataPlansResponseImplCopyWithImpl<_$DataPlansResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPlansResponseImplToJson(
      this,
    );
  }
}

abstract class _DataPlansResponse extends DataPlansResponse {
  factory _DataPlansResponse(
      {List<DataOpertorCardResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage}) = _$DataPlansResponseImpl;
  _DataPlansResponse._() : super._();

  factory _DataPlansResponse.fromJson(Map<String, dynamic> json) =
      _$DataPlansResponseImpl.fromJson;

  @override
  List<DataOpertorCardResponse>? get data;
  set data(List<DataOpertorCardResponse>? value);
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @JsonKey(name: 'current_page')
  set currentPage(int? value);
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @JsonKey(name: 'last_page')
  set lastPage(int? value);
  @override
  @JsonKey(ignore: true)
  _$$DataPlansResponseImplCopyWith<_$DataPlansResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataOpertorCardResponse _$DataOpertorCardResponseFromJson(
    Map<String, dynamic> json) {
  return _DataOpertorCardResponse.fromJson(json);
}

/// @nodoc
mixin _$DataOpertorCardResponse {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_plans')
  List<DataPlansListResponse>? get dataPlans =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'data_plans')
  set dataPlans(List<DataPlansListResponse>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataOpertorCardResponseCopyWith<DataOpertorCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataOpertorCardResponseCopyWith<$Res> {
  factory $DataOpertorCardResponseCopyWith(DataOpertorCardResponse value,
          $Res Function(DataOpertorCardResponse) then) =
      _$DataOpertorCardResponseCopyWithImpl<$Res, DataOpertorCardResponse>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? status,
      String? thumbnail,
      @JsonKey(name: 'data_plans') List<DataPlansListResponse>? dataPlans});
}

/// @nodoc
class _$DataOpertorCardResponseCopyWithImpl<$Res,
        $Val extends DataOpertorCardResponse>
    implements $DataOpertorCardResponseCopyWith<$Res> {
  _$DataOpertorCardResponseCopyWithImpl(this._value, this._then);

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
              as List<DataPlansListResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataOpertorCardResponseImplCopyWith<$Res>
    implements $DataOpertorCardResponseCopyWith<$Res> {
  factory _$$DataOpertorCardResponseImplCopyWith(
          _$DataOpertorCardResponseImpl value,
          $Res Function(_$DataOpertorCardResponseImpl) then) =
      __$$DataOpertorCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? status,
      String? thumbnail,
      @JsonKey(name: 'data_plans') List<DataPlansListResponse>? dataPlans});
}

/// @nodoc
class __$$DataOpertorCardResponseImplCopyWithImpl<$Res>
    extends _$DataOpertorCardResponseCopyWithImpl<$Res,
        _$DataOpertorCardResponseImpl>
    implements _$$DataOpertorCardResponseImplCopyWith<$Res> {
  __$$DataOpertorCardResponseImplCopyWithImpl(
      _$DataOpertorCardResponseImpl _value,
      $Res Function(_$DataOpertorCardResponseImpl) _then)
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
    return _then(_$DataOpertorCardResponseImpl(
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
              as List<DataPlansListResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataOpertorCardResponseImpl extends _DataOpertorCardResponse {
  _$DataOpertorCardResponseImpl(
      {this.id,
      this.name,
      this.status,
      this.thumbnail,
      @JsonKey(name: 'data_plans') this.dataPlans})
      : super._();

  factory _$DataOpertorCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataOpertorCardResponseImplFromJson(json);

  @override
  String? id;
  @override
  String? name;
  @override
  String? status;
  @override
  String? thumbnail;
  @override
  @JsonKey(name: 'data_plans')
  List<DataPlansListResponse>? dataPlans;

  @override
  String toString() {
    return 'DataOpertorCardResponse(id: $id, name: $name, status: $status, thumbnail: $thumbnail, dataPlans: $dataPlans)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataOpertorCardResponseImplCopyWith<_$DataOpertorCardResponseImpl>
      get copyWith => __$$DataOpertorCardResponseImplCopyWithImpl<
          _$DataOpertorCardResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataOpertorCardResponseImplToJson(
      this,
    );
  }
}

abstract class _DataOpertorCardResponse extends DataOpertorCardResponse {
  factory _DataOpertorCardResponse(
      {String? id,
      String? name,
      String? status,
      String? thumbnail,
      @JsonKey(name: 'data_plans')
      List<DataPlansListResponse>? dataPlans}) = _$DataOpertorCardResponseImpl;
  _DataOpertorCardResponse._() : super._();

  factory _DataOpertorCardResponse.fromJson(Map<String, dynamic> json) =
      _$DataOpertorCardResponseImpl.fromJson;

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
  @JsonKey(name: 'data_plans')
  List<DataPlansListResponse>? get dataPlans;
  @JsonKey(name: 'data_plans')
  set dataPlans(List<DataPlansListResponse>? value);
  @override
  @JsonKey(ignore: true)
  _$$DataOpertorCardResponseImplCopyWith<_$DataOpertorCardResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataPlansListResponse _$DataPlansListResponseFromJson(
    Map<String, dynamic> json) {
  return _DataPlansListResponse.fromJson(json);
}

/// @nodoc
mixin _$DataPlansListResponse {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  set price(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'operator_card_id')
  String? get operatorCardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'operator_card_id')
  set operatorCardId(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPlansListResponseCopyWith<DataPlansListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPlansListResponseCopyWith<$Res> {
  factory $DataPlansListResponseCopyWith(DataPlansListResponse value,
          $Res Function(DataPlansListResponse) then) =
      _$DataPlansListResponseCopyWithImpl<$Res, DataPlansListResponse>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      int? price,
      @JsonKey(name: 'operator_card_id') String? operatorCardId});
}

/// @nodoc
class _$DataPlansListResponseCopyWithImpl<$Res,
        $Val extends DataPlansListResponse>
    implements $DataPlansListResponseCopyWith<$Res> {
  _$DataPlansListResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$DataPlansListResponseImplCopyWith<$Res>
    implements $DataPlansListResponseCopyWith<$Res> {
  factory _$$DataPlansListResponseImplCopyWith(
          _$DataPlansListResponseImpl value,
          $Res Function(_$DataPlansListResponseImpl) then) =
      __$$DataPlansListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      int? price,
      @JsonKey(name: 'operator_card_id') String? operatorCardId});
}

/// @nodoc
class __$$DataPlansListResponseImplCopyWithImpl<$Res>
    extends _$DataPlansListResponseCopyWithImpl<$Res,
        _$DataPlansListResponseImpl>
    implements _$$DataPlansListResponseImplCopyWith<$Res> {
  __$$DataPlansListResponseImplCopyWithImpl(_$DataPlansListResponseImpl _value,
      $Res Function(_$DataPlansListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? operatorCardId = freezed,
  }) {
    return _then(_$DataPlansListResponseImpl(
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
@JsonSerializable()
class _$DataPlansListResponseImpl implements _DataPlansListResponse {
  _$DataPlansListResponseImpl(
      {this.id,
      this.name,
      this.price,
      @JsonKey(name: 'operator_card_id') this.operatorCardId});

  factory _$DataPlansListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPlansListResponseImplFromJson(json);

  @override
  String? id;
  @override
  String? name;
  @override
  int? price;
  @override
  @JsonKey(name: 'operator_card_id')
  String? operatorCardId;

  @override
  String toString() {
    return 'DataPlansListResponse(id: $id, name: $name, price: $price, operatorCardId: $operatorCardId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPlansListResponseImplCopyWith<_$DataPlansListResponseImpl>
      get copyWith => __$$DataPlansListResponseImplCopyWithImpl<
          _$DataPlansListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPlansListResponseImplToJson(
      this,
    );
  }
}

abstract class _DataPlansListResponse implements DataPlansListResponse {
  factory _DataPlansListResponse(
          {String? id,
          String? name,
          int? price,
          @JsonKey(name: 'operator_card_id') String? operatorCardId}) =
      _$DataPlansListResponseImpl;

  factory _DataPlansListResponse.fromJson(Map<String, dynamic> json) =
      _$DataPlansListResponseImpl.fromJson;

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
  @JsonKey(name: 'operator_card_id')
  String? get operatorCardId;
  @JsonKey(name: 'operator_card_id')
  set operatorCardId(String? value);
  @override
  @JsonKey(ignore: true)
  _$$DataPlansListResponseImplCopyWith<_$DataPlansListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
