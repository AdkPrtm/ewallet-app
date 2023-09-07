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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipsResponse _$TipsResponseFromJson(Map<String, dynamic> json) {
  return _TipsResponse.fromJson(json);
}

/// @nodoc
mixin _$TipsResponse {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  set currentPage(int? value) => throw _privateConstructorUsedError;
  List<DataTipsResponse>? get data => throw _privateConstructorUsedError;
  set data(List<DataTipsResponse>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  set firstPageUrl(String? value) => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  set from(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  set lastPage(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  set lastPageUrl(String? value) => throw _privateConstructorUsedError;
  List<LinksTipsResponse>? get links => throw _privateConstructorUsedError;
  set links(List<LinksTipsResponse>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  set nextPageUrl(String? value) => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  set path(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  set perPage(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  set prevPageUrl(String? value) => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  set to(int? value) => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  set total(int? value) => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'current_page') int? currentPage,
      List<DataTipsResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinksTipsResponse>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
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
              as List<DataTipsResponse>?,
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
              as List<LinksTipsResponse>?,
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
abstract class _$$_TipsResponseCopyWith<$Res>
    implements $TipsResponseCopyWith<$Res> {
  factory _$$_TipsResponseCopyWith(
          _$_TipsResponse value, $Res Function(_$_TipsResponse) then) =
      __$$_TipsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<DataTipsResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinksTipsResponse>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_TipsResponseCopyWithImpl<$Res>
    extends _$TipsResponseCopyWithImpl<$Res, _$_TipsResponse>
    implements _$$_TipsResponseCopyWith<$Res> {
  __$$_TipsResponseCopyWithImpl(
      _$_TipsResponse _value, $Res Function(_$_TipsResponse) _then)
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
    return _then(_$_TipsResponse(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTipsResponse>?,
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
              as List<LinksTipsResponse>?,
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
@JsonSerializable()
class _$_TipsResponse extends _TipsResponse {
  _$_TipsResponse(
      {@JsonKey(name: 'current_page') this.currentPage,
      this.data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      this.links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : super._();

  factory _$_TipsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TipsResponseFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  int? currentPage;
  @override
  List<DataTipsResponse>? data;
  @override
  @JsonKey(name: 'first_page_url')
  String? firstPageUrl;
  @override
  int? from;
  @override
  @JsonKey(name: 'last_page')
  int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? lastPageUrl;
  @override
  List<LinksTipsResponse>? links;
  @override
  @JsonKey(name: 'next_page_url')
  String? nextPageUrl;
  @override
  String? path;
  @override
  @JsonKey(name: 'per_page')
  int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? prevPageUrl;
  @override
  int? to;
  @override
  int? total;

  @override
  String toString() {
    return 'TipsResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TipsResponseCopyWith<_$_TipsResponse> get copyWith =>
      __$$_TipsResponseCopyWithImpl<_$_TipsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipsResponseToJson(
      this,
    );
  }
}

abstract class _TipsResponse extends TipsResponse {
  factory _TipsResponse(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<DataTipsResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinksTipsResponse>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total}) = _$_TipsResponse;
  _TipsResponse._() : super._();

  factory _TipsResponse.fromJson(Map<String, dynamic> json) =
      _$_TipsResponse.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @JsonKey(name: 'current_page')
  set currentPage(int? value);
  @override
  List<DataTipsResponse>? get data;
  set data(List<DataTipsResponse>? value);
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @JsonKey(name: 'first_page_url')
  set firstPageUrl(String? value);
  @override
  int? get from;
  set from(int? value);
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @JsonKey(name: 'last_page')
  set lastPage(int? value);
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @JsonKey(name: 'last_page_url')
  set lastPageUrl(String? value);
  @override
  List<LinksTipsResponse>? get links;
  set links(List<LinksTipsResponse>? value);
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @JsonKey(name: 'next_page_url')
  set nextPageUrl(String? value);
  @override
  String? get path;
  set path(String? value);
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @JsonKey(name: 'per_page')
  set perPage(int? value);
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @JsonKey(name: 'prev_page_url')
  set prevPageUrl(String? value);
  @override
  int? get to;
  set to(int? value);
  @override
  int? get total;
  set total(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_TipsResponseCopyWith<_$_TipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTipsResponse _$DataTipsResponseFromJson(Map<String, dynamic> json) {
  return _DataTipsResponse.fromJson(json);
}

/// @nodoc
mixin _$DataTipsResponse {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
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
  $Res call({int? id, String? title, String? url, String? thumbnail});
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
              as int?,
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
abstract class _$$_DataTipsResponseCopyWith<$Res>
    implements $DataTipsResponseCopyWith<$Res> {
  factory _$$_DataTipsResponseCopyWith(
          _$_DataTipsResponse value, $Res Function(_$_DataTipsResponse) then) =
      __$$_DataTipsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? url, String? thumbnail});
}

/// @nodoc
class __$$_DataTipsResponseCopyWithImpl<$Res>
    extends _$DataTipsResponseCopyWithImpl<$Res, _$_DataTipsResponse>
    implements _$$_DataTipsResponseCopyWith<$Res> {
  __$$_DataTipsResponseCopyWithImpl(
      _$_DataTipsResponse _value, $Res Function(_$_DataTipsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_DataTipsResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_DataTipsResponse implements _DataTipsResponse {
  _$_DataTipsResponse({this.id, this.title, this.url, this.thumbnail});

  factory _$_DataTipsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataTipsResponseFromJson(json);

  @override
  int? id;
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
  _$$_DataTipsResponseCopyWith<_$_DataTipsResponse> get copyWith =>
      __$$_DataTipsResponseCopyWithImpl<_$_DataTipsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTipsResponseToJson(
      this,
    );
  }
}

abstract class _DataTipsResponse implements DataTipsResponse {
  factory _DataTipsResponse(
      {int? id,
      String? title,
      String? url,
      String? thumbnail}) = _$_DataTipsResponse;

  factory _DataTipsResponse.fromJson(Map<String, dynamic> json) =
      _$_DataTipsResponse.fromJson;

  @override
  int? get id;
  set id(int? value);
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
  _$$_DataTipsResponseCopyWith<_$_DataTipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LinksTipsResponse _$LinksTipsResponseFromJson(Map<String, dynamic> json) {
  return _LinksTipsResponse.fromJson(json);
}

/// @nodoc
mixin _$LinksTipsResponse {
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  set label(String? value) => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  set active(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksTipsResponseCopyWith<LinksTipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksTipsResponseCopyWith<$Res> {
  factory $LinksTipsResponseCopyWith(
          LinksTipsResponse value, $Res Function(LinksTipsResponse) then) =
      _$LinksTipsResponseCopyWithImpl<$Res, LinksTipsResponse>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinksTipsResponseCopyWithImpl<$Res, $Val extends LinksTipsResponse>
    implements $LinksTipsResponseCopyWith<$Res> {
  _$LinksTipsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_LinksTipsResponseCopyWith<$Res>
    implements $LinksTipsResponseCopyWith<$Res> {
  factory _$$_LinksTipsResponseCopyWith(_$_LinksTipsResponse value,
          $Res Function(_$_LinksTipsResponse) then) =
      __$$_LinksTipsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_LinksTipsResponseCopyWithImpl<$Res>
    extends _$LinksTipsResponseCopyWithImpl<$Res, _$_LinksTipsResponse>
    implements _$$_LinksTipsResponseCopyWith<$Res> {
  __$$_LinksTipsResponseCopyWithImpl(
      _$_LinksTipsResponse _value, $Res Function(_$_LinksTipsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_LinksTipsResponse(
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
@JsonSerializable()
class _$_LinksTipsResponse implements _LinksTipsResponse {
  _$_LinksTipsResponse({this.url, this.label, this.active});

  factory _$_LinksTipsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LinksTipsResponseFromJson(json);

  @override
  String? url;
  @override
  String? label;
  @override
  bool? active;

  @override
  String toString() {
    return 'LinksTipsResponse(url: $url, label: $label, active: $active)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksTipsResponseCopyWith<_$_LinksTipsResponse> get copyWith =>
      __$$_LinksTipsResponseCopyWithImpl<_$_LinksTipsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksTipsResponseToJson(
      this,
    );
  }
}

abstract class _LinksTipsResponse implements LinksTipsResponse {
  factory _LinksTipsResponse({String? url, String? label, bool? active}) =
      _$_LinksTipsResponse;

  factory _LinksTipsResponse.fromJson(Map<String, dynamic> json) =
      _$_LinksTipsResponse.fromJson;

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
  _$$_LinksTipsResponseCopyWith<_$_LinksTipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
