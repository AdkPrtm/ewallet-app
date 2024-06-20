// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tips_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TipsResponse _$TipsResponseFromJson(Map<String, dynamic> json) {
  return _TipsResponse.fromJson(json);
}

/// @nodoc
mixin _$TipsResponse {
  List<DataTipsResponse>? get data => throw _privateConstructorUsedError;
  set data(List<DataTipsResponse>? value) => throw _privateConstructorUsedError;
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
  $TipsResponseCopyWith<TipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsResponseCopyWith<$Res> {
  factory $TipsResponseCopyWith(
          TipsResponse value, $Res Function(TipsResponse) then) =
      _$TipsResponseCopyWithImpl<$Res, TipsResponse>;
  @useResult
  $Res call(
      {List<DataTipsResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$TipsResponseCopyWithImpl<$Res, $Val extends TipsResponse>
    implements $TipsResponseCopyWith<$Res> {
  _$TipsResponseCopyWithImpl(this._value, this._then);

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
              as List<DataTipsResponse>?,
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
abstract class _$$TipsResponseImplCopyWith<$Res>
    implements $TipsResponseCopyWith<$Res> {
  factory _$$TipsResponseImplCopyWith(
          _$TipsResponseImpl value, $Res Function(_$TipsResponseImpl) then) =
      __$$TipsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DataTipsResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$TipsResponseImplCopyWithImpl<$Res>
    extends _$TipsResponseCopyWithImpl<$Res, _$TipsResponseImpl>
    implements _$$TipsResponseImplCopyWith<$Res> {
  __$$TipsResponseImplCopyWithImpl(
      _$TipsResponseImpl _value, $Res Function(_$TipsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$TipsResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTipsResponse>?,
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
class _$TipsResponseImpl extends _TipsResponse {
  _$TipsResponseImpl(
      {this.data,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'last_page') this.lastPage})
      : super._();

  factory _$TipsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipsResponseImplFromJson(json);

  @override
  List<DataTipsResponse>? data;
  @override
  @JsonKey(name: 'current_page')
  int? currentPage;
  @override
  @JsonKey(name: 'last_page')
  int? lastPage;

  @override
  String toString() {
    return 'TipsResponse(data: $data, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipsResponseImplCopyWith<_$TipsResponseImpl> get copyWith =>
      __$$TipsResponseImplCopyWithImpl<_$TipsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipsResponseImplToJson(
      this,
    );
  }
}

abstract class _TipsResponse extends TipsResponse {
  factory _TipsResponse(
      {List<DataTipsResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage}) = _$TipsResponseImpl;
  _TipsResponse._() : super._();

  factory _TipsResponse.fromJson(Map<String, dynamic> json) =
      _$TipsResponseImpl.fromJson;

  @override
  List<DataTipsResponse>? get data;
  set data(List<DataTipsResponse>? value);
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
  _$$TipsResponseImplCopyWith<_$TipsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTipsResponse _$DataTipsResponseFromJson(Map<String, dynamic> json) {
  return _DataTipsResponse.fromJson(json);
}

/// @nodoc
mixin _$DataTipsResponse {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTipsResponseCopyWith<DataTipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTipsResponseCopyWith<$Res> {
  factory $DataTipsResponseCopyWith(
          DataTipsResponse value, $Res Function(DataTipsResponse) then) =
      _$DataTipsResponseCopyWithImpl<$Res, DataTipsResponse>;
  @useResult
  $Res call({String? id, String? title, String? url, String? thumbnail});
}

/// @nodoc
class _$DataTipsResponseCopyWithImpl<$Res, $Val extends DataTipsResponse>
    implements $DataTipsResponseCopyWith<$Res> {
  _$DataTipsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$DataTipsResponseImplCopyWith<$Res>
    implements $DataTipsResponseCopyWith<$Res> {
  factory _$$DataTipsResponseImplCopyWith(_$DataTipsResponseImpl value,
          $Res Function(_$DataTipsResponseImpl) then) =
      __$$DataTipsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? url, String? thumbnail});
}

/// @nodoc
class __$$DataTipsResponseImplCopyWithImpl<$Res>
    extends _$DataTipsResponseCopyWithImpl<$Res, _$DataTipsResponseImpl>
    implements _$$DataTipsResponseImplCopyWith<$Res> {
  __$$DataTipsResponseImplCopyWithImpl(_$DataTipsResponseImpl _value,
      $Res Function(_$DataTipsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$DataTipsResponseImpl(
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
@JsonSerializable()
class _$DataTipsResponseImpl implements _DataTipsResponse {
  _$DataTipsResponseImpl({this.id, this.title, this.url, this.thumbnail});

  factory _$DataTipsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataTipsResponseImplFromJson(json);

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
    return 'DataTipsResponse(id: $id, title: $title, url: $url, thumbnail: $thumbnail)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataTipsResponseImplCopyWith<_$DataTipsResponseImpl> get copyWith =>
      __$$DataTipsResponseImplCopyWithImpl<_$DataTipsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataTipsResponseImplToJson(
      this,
    );
  }
}

abstract class _DataTipsResponse implements DataTipsResponse {
  factory _DataTipsResponse(
      {String? id,
      String? title,
      String? url,
      String? thumbnail}) = _$DataTipsResponseImpl;

  factory _DataTipsResponse.fromJson(Map<String, dynamic> json) =
      _$DataTipsResponseImpl.fromJson;

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
  _$$DataTipsResponseImplCopyWith<_$DataTipsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
