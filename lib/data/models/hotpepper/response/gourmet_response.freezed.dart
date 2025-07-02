// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gourmet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GourmetResponse _$GourmetResponseFromJson(Map<String, dynamic> json) {
  return _GourmetResponse.fromJson(json);
}

/// @nodoc
mixin _$GourmetResponse {
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  String get apiVersion => throw _privateConstructorUsedError;
  @SafeIntConverter()
  @JsonKey(name: 'results_available', defaultValue: 0)
  int get resultsAvailable => throw _privateConstructorUsedError;
  @SafeIntConverter()
  @JsonKey(name: 'results_returned', defaultValue: 0)
  int get resultsReturned => throw _privateConstructorUsedError;
  @SafeIntConverter()
  @JsonKey(name: 'results_start', defaultValue: 0)
  int get resultsStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop', defaultValue: <Shop>[])
  List<Shop> get shops => throw _privateConstructorUsedError;

  /// Serializes this GourmetResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GourmetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GourmetResponseCopyWith<GourmetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GourmetResponseCopyWith<$Res> {
  factory $GourmetResponseCopyWith(
    GourmetResponse value,
    $Res Function(GourmetResponse) then,
  ) = _$GourmetResponseCopyWithImpl<$Res, GourmetResponse>;
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    String apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    int resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    int resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    int resultsStart,
    @JsonKey(name: 'shop', defaultValue: <Shop>[]) List<Shop> shops,
  });
}

/// @nodoc
class _$GourmetResponseCopyWithImpl<$Res, $Val extends GourmetResponse>
    implements $GourmetResponseCopyWith<$Res> {
  _$GourmetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GourmetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? shops = null,
  }) {
    return _then(
      _value.copyWith(
            apiVersion:
                null == apiVersion
                    ? _value.apiVersion
                    : apiVersion // ignore: cast_nullable_to_non_nullable
                        as String,
            resultsAvailable:
                null == resultsAvailable
                    ? _value.resultsAvailable
                    : resultsAvailable // ignore: cast_nullable_to_non_nullable
                        as int,
            resultsReturned:
                null == resultsReturned
                    ? _value.resultsReturned
                    : resultsReturned // ignore: cast_nullable_to_non_nullable
                        as int,
            resultsStart:
                null == resultsStart
                    ? _value.resultsStart
                    : resultsStart // ignore: cast_nullable_to_non_nullable
                        as int,
            shops:
                null == shops
                    ? _value.shops
                    : shops // ignore: cast_nullable_to_non_nullable
                        as List<Shop>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GourmetResponseImplCopyWith<$Res>
    implements $GourmetResponseCopyWith<$Res> {
  factory _$$GourmetResponseImplCopyWith(
    _$GourmetResponseImpl value,
    $Res Function(_$GourmetResponseImpl) then,
  ) = __$$GourmetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    String apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    int resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    int resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    int resultsStart,
    @JsonKey(name: 'shop', defaultValue: <Shop>[]) List<Shop> shops,
  });
}

/// @nodoc
class __$$GourmetResponseImplCopyWithImpl<$Res>
    extends _$GourmetResponseCopyWithImpl<$Res, _$GourmetResponseImpl>
    implements _$$GourmetResponseImplCopyWith<$Res> {
  __$$GourmetResponseImplCopyWithImpl(
    _$GourmetResponseImpl _value,
    $Res Function(_$GourmetResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GourmetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? shops = null,
  }) {
    return _then(
      _$GourmetResponseImpl(
        apiVersion:
            null == apiVersion
                ? _value.apiVersion
                : apiVersion // ignore: cast_nullable_to_non_nullable
                    as String,
        resultsAvailable:
            null == resultsAvailable
                ? _value.resultsAvailable
                : resultsAvailable // ignore: cast_nullable_to_non_nullable
                    as int,
        resultsReturned:
            null == resultsReturned
                ? _value.resultsReturned
                : resultsReturned // ignore: cast_nullable_to_non_nullable
                    as int,
        resultsStart:
            null == resultsStart
                ? _value.resultsStart
                : resultsStart // ignore: cast_nullable_to_non_nullable
                    as int,
        shops:
            null == shops
                ? _value._shops
                : shops // ignore: cast_nullable_to_non_nullable
                    as List<Shop>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GourmetResponseImpl implements _GourmetResponse {
  const _$GourmetResponseImpl({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required this.apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    required this.resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    required this.resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    required this.resultsStart,
    @JsonKey(name: 'shop', defaultValue: <Shop>[])
    required final List<Shop> shops,
  }) : _shops = shops;

  factory _$GourmetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GourmetResponseImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  final String apiVersion;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_available', defaultValue: 0)
  final int resultsAvailable;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_returned', defaultValue: 0)
  final int resultsReturned;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_start', defaultValue: 0)
  final int resultsStart;
  final List<Shop> _shops;
  @override
  @JsonKey(name: 'shop', defaultValue: <Shop>[])
  List<Shop> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  @override
  String toString() {
    return 'GourmetResponse(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, shops: $shops)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GourmetResponseImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(other._shops, _shops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    apiVersion,
    resultsAvailable,
    resultsReturned,
    resultsStart,
    const DeepCollectionEquality().hash(_shops),
  );

  /// Create a copy of GourmetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GourmetResponseImplCopyWith<_$GourmetResponseImpl> get copyWith =>
      __$$GourmetResponseImplCopyWithImpl<_$GourmetResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GourmetResponseImplToJson(this);
  }
}

abstract class _GourmetResponse implements GourmetResponse {
  const factory _GourmetResponse({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required final String apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    required final int resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    required final int resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    required final int resultsStart,
    @JsonKey(name: 'shop', defaultValue: <Shop>[])
    required final List<Shop> shops,
  }) = _$GourmetResponseImpl;

  factory _GourmetResponse.fromJson(Map<String, dynamic> json) =
      _$GourmetResponseImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  String get apiVersion;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_available', defaultValue: 0)
  int get resultsAvailable;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_returned', defaultValue: 0)
  int get resultsReturned;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_start', defaultValue: 0)
  int get resultsStart;
  @override
  @JsonKey(name: 'shop', defaultValue: <Shop>[])
  List<Shop> get shops;

  /// Create a copy of GourmetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GourmetResponseImplCopyWith<_$GourmetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  /// 가게 ID
  @SafeStringConverter()
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;

  /// 가게명
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  /// 주소
  @SafeStringConverter()
  @JsonKey(name: 'address', defaultValue: '')
  String get address => throw _privateConstructorUsedError;

  /// 캐치 문구
  @SafeStringConverter()
  @JsonKey(name: 'catch', defaultValue: '')
  String get catchPhrase => throw _privateConstructorUsedError;

  /// 교통편
  @SafeStringConverter()
  @JsonKey(name: 'access', defaultValue: '')
  String get access => throw _privateConstructorUsedError;

  /// 위도
  @SafeDoubleConverter()
  @JsonKey(name: 'lat', defaultValue: 0.0)
  double get latitude => throw _privateConstructorUsedError;

  /// 경도
  @SafeDoubleConverter()
  @JsonKey(name: 'lng', defaultValue: 0.0)
  double get longitude => throw _privateConstructorUsedError;

  /// 장르 정보
  @JsonKey(name: 'genre')
  ShopGenre get genre => throw _privateConstructorUsedError;

  /// 예산 정보
  @JsonKey(name: 'budget')
  ShopBudget get budget => throw _privateConstructorUsedError;

  /// 사진 정보
  @JsonKey(name: 'photo')
  ShopPhoto get photo => throw _privateConstructorUsedError;

  /// Serializes this Shop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res, Shop>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'id', defaultValue: '') String id,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @SafeStringConverter()
    @JsonKey(name: 'address', defaultValue: '')
    String address,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    String catchPhrase,
    @SafeStringConverter()
    @JsonKey(name: 'access', defaultValue: '')
    String access,
    @SafeDoubleConverter()
    @JsonKey(name: 'lat', defaultValue: 0.0)
    double latitude,
    @SafeDoubleConverter()
    @JsonKey(name: 'lng', defaultValue: 0.0)
    double longitude,
    @JsonKey(name: 'genre') ShopGenre genre,
    @JsonKey(name: 'budget') ShopBudget budget,
    @JsonKey(name: 'photo') ShopPhoto photo,
  });

  $ShopGenreCopyWith<$Res> get genre;
  $ShopBudgetCopyWith<$Res> get budget;
  $ShopPhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$ShopCopyWithImpl<$Res, $Val extends Shop>
    implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? catchPhrase = null,
    Object? access = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? genre = null,
    Object? budget = null,
    Object? photo = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            catchPhrase:
                null == catchPhrase
                    ? _value.catchPhrase
                    : catchPhrase // ignore: cast_nullable_to_non_nullable
                        as String,
            access:
                null == access
                    ? _value.access
                    : access // ignore: cast_nullable_to_non_nullable
                        as String,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            genre:
                null == genre
                    ? _value.genre
                    : genre // ignore: cast_nullable_to_non_nullable
                        as ShopGenre,
            budget:
                null == budget
                    ? _value.budget
                    : budget // ignore: cast_nullable_to_non_nullable
                        as ShopBudget,
            photo:
                null == photo
                    ? _value.photo
                    : photo // ignore: cast_nullable_to_non_nullable
                        as ShopPhoto,
          )
          as $Val,
    );
  }

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopGenreCopyWith<$Res> get genre {
    return $ShopGenreCopyWith<$Res>(_value.genre, (value) {
      return _then(_value.copyWith(genre: value) as $Val);
    });
  }

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopBudgetCopyWith<$Res> get budget {
    return $ShopBudgetCopyWith<$Res>(_value.budget, (value) {
      return _then(_value.copyWith(budget: value) as $Val);
    });
  }

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopPhotoCopyWith<$Res> get photo {
    return $ShopPhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopImplCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$ShopImplCopyWith(
    _$ShopImpl value,
    $Res Function(_$ShopImpl) then,
  ) = __$$ShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'id', defaultValue: '') String id,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @SafeStringConverter()
    @JsonKey(name: 'address', defaultValue: '')
    String address,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    String catchPhrase,
    @SafeStringConverter()
    @JsonKey(name: 'access', defaultValue: '')
    String access,
    @SafeDoubleConverter()
    @JsonKey(name: 'lat', defaultValue: 0.0)
    double latitude,
    @SafeDoubleConverter()
    @JsonKey(name: 'lng', defaultValue: 0.0)
    double longitude,
    @JsonKey(name: 'genre') ShopGenre genre,
    @JsonKey(name: 'budget') ShopBudget budget,
    @JsonKey(name: 'photo') ShopPhoto photo,
  });

  @override
  $ShopGenreCopyWith<$Res> get genre;
  @override
  $ShopBudgetCopyWith<$Res> get budget;
  @override
  $ShopPhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$ShopImplCopyWithImpl<$Res>
    extends _$ShopCopyWithImpl<$Res, _$ShopImpl>
    implements _$$ShopImplCopyWith<$Res> {
  __$$ShopImplCopyWithImpl(_$ShopImpl _value, $Res Function(_$ShopImpl) _then)
    : super(_value, _then);

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? catchPhrase = null,
    Object? access = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? genre = null,
    Object? budget = null,
    Object? photo = null,
  }) {
    return _then(
      _$ShopImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        catchPhrase:
            null == catchPhrase
                ? _value.catchPhrase
                : catchPhrase // ignore: cast_nullable_to_non_nullable
                    as String,
        access:
            null == access
                ? _value.access
                : access // ignore: cast_nullable_to_non_nullable
                    as String,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        genre:
            null == genre
                ? _value.genre
                : genre // ignore: cast_nullable_to_non_nullable
                    as ShopGenre,
        budget:
            null == budget
                ? _value.budget
                : budget // ignore: cast_nullable_to_non_nullable
                    as ShopBudget,
        photo:
            null == photo
                ? _value.photo
                : photo // ignore: cast_nullable_to_non_nullable
                    as ShopPhoto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopImpl implements _Shop {
  const _$ShopImpl({
    @SafeStringConverter()
    @JsonKey(name: 'id', defaultValue: '')
    required this.id,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
    @SafeStringConverter()
    @JsonKey(name: 'address', defaultValue: '')
    required this.address,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    required this.catchPhrase,
    @SafeStringConverter()
    @JsonKey(name: 'access', defaultValue: '')
    required this.access,
    @SafeDoubleConverter()
    @JsonKey(name: 'lat', defaultValue: 0.0)
    required this.latitude,
    @SafeDoubleConverter()
    @JsonKey(name: 'lng', defaultValue: 0.0)
    required this.longitude,
    @JsonKey(name: 'genre') required this.genre,
    @JsonKey(name: 'budget') required this.budget,
    @JsonKey(name: 'photo') required this.photo,
  });

  factory _$ShopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopImplFromJson(json);

  /// 가게 ID
  @override
  @SafeStringConverter()
  @JsonKey(name: 'id', defaultValue: '')
  final String id;

  /// 가게명
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  /// 주소
  @override
  @SafeStringConverter()
  @JsonKey(name: 'address', defaultValue: '')
  final String address;

  /// 캐치 문구
  @override
  @SafeStringConverter()
  @JsonKey(name: 'catch', defaultValue: '')
  final String catchPhrase;

  /// 교통편
  @override
  @SafeStringConverter()
  @JsonKey(name: 'access', defaultValue: '')
  final String access;

  /// 위도
  @override
  @SafeDoubleConverter()
  @JsonKey(name: 'lat', defaultValue: 0.0)
  final double latitude;

  /// 경도
  @override
  @SafeDoubleConverter()
  @JsonKey(name: 'lng', defaultValue: 0.0)
  final double longitude;

  /// 장르 정보
  @override
  @JsonKey(name: 'genre')
  final ShopGenre genre;

  /// 예산 정보
  @override
  @JsonKey(name: 'budget')
  final ShopBudget budget;

  /// 사진 정보
  @override
  @JsonKey(name: 'photo')
  final ShopPhoto photo;

  @override
  String toString() {
    return 'Shop(id: $id, name: $name, address: $address, catchPhrase: $catchPhrase, access: $access, latitude: $latitude, longitude: $longitude, genre: $genre, budget: $budget, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    address,
    catchPhrase,
    access,
    latitude,
    longitude,
    genre,
    budget,
    photo,
  );

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      __$$ShopImplCopyWithImpl<_$ShopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopImplToJson(this);
  }
}

abstract class _Shop implements Shop {
  const factory _Shop({
    @SafeStringConverter()
    @JsonKey(name: 'id', defaultValue: '')
    required final String id,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
    @SafeStringConverter()
    @JsonKey(name: 'address', defaultValue: '')
    required final String address,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    required final String catchPhrase,
    @SafeStringConverter()
    @JsonKey(name: 'access', defaultValue: '')
    required final String access,
    @SafeDoubleConverter()
    @JsonKey(name: 'lat', defaultValue: 0.0)
    required final double latitude,
    @SafeDoubleConverter()
    @JsonKey(name: 'lng', defaultValue: 0.0)
    required final double longitude,
    @JsonKey(name: 'genre') required final ShopGenre genre,
    @JsonKey(name: 'budget') required final ShopBudget budget,
    @JsonKey(name: 'photo') required final ShopPhoto photo,
  }) = _$ShopImpl;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$ShopImpl.fromJson;

  /// 가게 ID
  @override
  @SafeStringConverter()
  @JsonKey(name: 'id', defaultValue: '')
  String get id;

  /// 가게명
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;

  /// 주소
  @override
  @SafeStringConverter()
  @JsonKey(name: 'address', defaultValue: '')
  String get address;

  /// 캐치 문구
  @override
  @SafeStringConverter()
  @JsonKey(name: 'catch', defaultValue: '')
  String get catchPhrase;

  /// 교통편
  @override
  @SafeStringConverter()
  @JsonKey(name: 'access', defaultValue: '')
  String get access;

  /// 위도
  @override
  @SafeDoubleConverter()
  @JsonKey(name: 'lat', defaultValue: 0.0)
  double get latitude;

  /// 경도
  @override
  @SafeDoubleConverter()
  @JsonKey(name: 'lng', defaultValue: 0.0)
  double get longitude;

  /// 장르 정보
  @override
  @JsonKey(name: 'genre')
  ShopGenre get genre;

  /// 예산 정보
  @override
  @JsonKey(name: 'budget')
  ShopBudget get budget;

  /// 사진 정보
  @override
  @JsonKey(name: 'photo')
  ShopPhoto get photo;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopGenre _$ShopGenreFromJson(Map<String, dynamic> json) {
  return _ShopGenre.fromJson(json);
}

/// @nodoc
mixin _$ShopGenre {
  /// 장르 코드
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;

  /// 장르명
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  /// 장르 캐치 문구
  @SafeStringConverter()
  @JsonKey(name: 'catch', defaultValue: '')
  String get catchPhrase => throw _privateConstructorUsedError;

  /// Serializes this ShopGenre to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopGenre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopGenreCopyWith<ShopGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopGenreCopyWith<$Res> {
  factory $ShopGenreCopyWith(ShopGenre value, $Res Function(ShopGenre) then) =
      _$ShopGenreCopyWithImpl<$Res, ShopGenre>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    String catchPhrase,
  });
}

/// @nodoc
class _$ShopGenreCopyWithImpl<$Res, $Val extends ShopGenre>
    implements $ShopGenreCopyWith<$Res> {
  _$ShopGenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopGenre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? catchPhrase = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            catchPhrase:
                null == catchPhrase
                    ? _value.catchPhrase
                    : catchPhrase // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShopGenreImplCopyWith<$Res>
    implements $ShopGenreCopyWith<$Res> {
  factory _$$ShopGenreImplCopyWith(
    _$ShopGenreImpl value,
    $Res Function(_$ShopGenreImpl) then,
  ) = __$$ShopGenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    String catchPhrase,
  });
}

/// @nodoc
class __$$ShopGenreImplCopyWithImpl<$Res>
    extends _$ShopGenreCopyWithImpl<$Res, _$ShopGenreImpl>
    implements _$$ShopGenreImplCopyWith<$Res> {
  __$$ShopGenreImplCopyWithImpl(
    _$ShopGenreImpl _value,
    $Res Function(_$ShopGenreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopGenre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? catchPhrase = null,
  }) {
    return _then(
      _$ShopGenreImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        catchPhrase:
            null == catchPhrase
                ? _value.catchPhrase
                : catchPhrase // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopGenreImpl implements _ShopGenre {
  const _$ShopGenreImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    required this.catchPhrase,
  });

  factory _$ShopGenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopGenreImplFromJson(json);

  /// 장르 코드
  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  final String code;

  /// 장르명
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  /// 장르 캐치 문구
  @override
  @SafeStringConverter()
  @JsonKey(name: 'catch', defaultValue: '')
  final String catchPhrase;

  @override
  String toString() {
    return 'ShopGenre(code: $code, name: $name, catchPhrase: $catchPhrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopGenreImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, catchPhrase);

  /// Create a copy of ShopGenre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopGenreImplCopyWith<_$ShopGenreImpl> get copyWith =>
      __$$ShopGenreImplCopyWithImpl<_$ShopGenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopGenreImplToJson(this);
  }
}

abstract class _ShopGenre implements ShopGenre {
  const factory _ShopGenre({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    required final String catchPhrase,
  }) = _$ShopGenreImpl;

  factory _ShopGenre.fromJson(Map<String, dynamic> json) =
      _$ShopGenreImpl.fromJson;

  /// 장르 코드
  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;

  /// 장르명
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;

  /// 장르 캐치 문구
  @override
  @SafeStringConverter()
  @JsonKey(name: 'catch', defaultValue: '')
  String get catchPhrase;

  /// Create a copy of ShopGenre
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopGenreImplCopyWith<_$ShopGenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopBudget _$ShopBudgetFromJson(Map<String, dynamic> json) {
  return _ShopBudget.fromJson(json);
}

/// @nodoc
mixin _$ShopBudget {
  /// 예산 코드
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;

  /// 예산 범위
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  /// 평균 예산
  @SafeStringConverter()
  @JsonKey(name: 'average', defaultValue: '')
  String get average => throw _privateConstructorUsedError;

  /// Serializes this ShopBudget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopBudget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopBudgetCopyWith<ShopBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopBudgetCopyWith<$Res> {
  factory $ShopBudgetCopyWith(
    ShopBudget value,
    $Res Function(ShopBudget) then,
  ) = _$ShopBudgetCopyWithImpl<$Res, ShopBudget>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @SafeStringConverter()
    @JsonKey(name: 'average', defaultValue: '')
    String average,
  });
}

/// @nodoc
class _$ShopBudgetCopyWithImpl<$Res, $Val extends ShopBudget>
    implements $ShopBudgetCopyWith<$Res> {
  _$ShopBudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopBudget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? average = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            average:
                null == average
                    ? _value.average
                    : average // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShopBudgetImplCopyWith<$Res>
    implements $ShopBudgetCopyWith<$Res> {
  factory _$$ShopBudgetImplCopyWith(
    _$ShopBudgetImpl value,
    $Res Function(_$ShopBudgetImpl) then,
  ) = __$$ShopBudgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @SafeStringConverter()
    @JsonKey(name: 'average', defaultValue: '')
    String average,
  });
}

/// @nodoc
class __$$ShopBudgetImplCopyWithImpl<$Res>
    extends _$ShopBudgetCopyWithImpl<$Res, _$ShopBudgetImpl>
    implements _$$ShopBudgetImplCopyWith<$Res> {
  __$$ShopBudgetImplCopyWithImpl(
    _$ShopBudgetImpl _value,
    $Res Function(_$ShopBudgetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopBudget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? average = null,
  }) {
    return _then(
      _$ShopBudgetImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        average:
            null == average
                ? _value.average
                : average // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopBudgetImpl implements _ShopBudget {
  const _$ShopBudgetImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
    @SafeStringConverter()
    @JsonKey(name: 'average', defaultValue: '')
    required this.average,
  });

  factory _$ShopBudgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopBudgetImplFromJson(json);

  /// 예산 코드
  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  final String code;

  /// 예산 범위
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  /// 평균 예산
  @override
  @SafeStringConverter()
  @JsonKey(name: 'average', defaultValue: '')
  final String average;

  @override
  String toString() {
    return 'ShopBudget(code: $code, name: $name, average: $average)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopBudgetImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.average, average) || other.average == average));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, average);

  /// Create a copy of ShopBudget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopBudgetImplCopyWith<_$ShopBudgetImpl> get copyWith =>
      __$$ShopBudgetImplCopyWithImpl<_$ShopBudgetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopBudgetImplToJson(this);
  }
}

abstract class _ShopBudget implements ShopBudget {
  const factory _ShopBudget({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
    @SafeStringConverter()
    @JsonKey(name: 'average', defaultValue: '')
    required final String average,
  }) = _$ShopBudgetImpl;

  factory _ShopBudget.fromJson(Map<String, dynamic> json) =
      _$ShopBudgetImpl.fromJson;

  /// 예산 코드
  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;

  /// 예산 범위
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;

  /// 평균 예산
  @override
  @SafeStringConverter()
  @JsonKey(name: 'average', defaultValue: '')
  String get average;

  /// Create a copy of ShopBudget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopBudgetImplCopyWith<_$ShopBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopPhoto _$ShopPhotoFromJson(Map<String, dynamic> json) {
  return _ShopPhoto.fromJson(json);
}

/// @nodoc
mixin _$ShopPhoto {
  /// PC용 사진 URL들
  @JsonKey(name: 'pc')
  ShopPhotoUrls get pc => throw _privateConstructorUsedError;

  /// Serializes this ShopPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopPhotoCopyWith<ShopPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPhotoCopyWith<$Res> {
  factory $ShopPhotoCopyWith(ShopPhoto value, $Res Function(ShopPhoto) then) =
      _$ShopPhotoCopyWithImpl<$Res, ShopPhoto>;
  @useResult
  $Res call({@JsonKey(name: 'pc') ShopPhotoUrls pc});

  $ShopPhotoUrlsCopyWith<$Res> get pc;
}

/// @nodoc
class _$ShopPhotoCopyWithImpl<$Res, $Val extends ShopPhoto>
    implements $ShopPhotoCopyWith<$Res> {
  _$ShopPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pc = null}) {
    return _then(
      _value.copyWith(
            pc:
                null == pc
                    ? _value.pc
                    : pc // ignore: cast_nullable_to_non_nullable
                        as ShopPhotoUrls,
          )
          as $Val,
    );
  }

  /// Create a copy of ShopPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopPhotoUrlsCopyWith<$Res> get pc {
    return $ShopPhotoUrlsCopyWith<$Res>(_value.pc, (value) {
      return _then(_value.copyWith(pc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopPhotoImplCopyWith<$Res>
    implements $ShopPhotoCopyWith<$Res> {
  factory _$$ShopPhotoImplCopyWith(
    _$ShopPhotoImpl value,
    $Res Function(_$ShopPhotoImpl) then,
  ) = __$$ShopPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'pc') ShopPhotoUrls pc});

  @override
  $ShopPhotoUrlsCopyWith<$Res> get pc;
}

/// @nodoc
class __$$ShopPhotoImplCopyWithImpl<$Res>
    extends _$ShopPhotoCopyWithImpl<$Res, _$ShopPhotoImpl>
    implements _$$ShopPhotoImplCopyWith<$Res> {
  __$$ShopPhotoImplCopyWithImpl(
    _$ShopPhotoImpl _value,
    $Res Function(_$ShopPhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pc = null}) {
    return _then(
      _$ShopPhotoImpl(
        pc:
            null == pc
                ? _value.pc
                : pc // ignore: cast_nullable_to_non_nullable
                    as ShopPhotoUrls,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopPhotoImpl implements _ShopPhoto {
  const _$ShopPhotoImpl({@JsonKey(name: 'pc') required this.pc});

  factory _$ShopPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopPhotoImplFromJson(json);

  /// PC용 사진 URL들
  @override
  @JsonKey(name: 'pc')
  final ShopPhotoUrls pc;

  @override
  String toString() {
    return 'ShopPhoto(pc: $pc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopPhotoImpl &&
            (identical(other.pc, pc) || other.pc == pc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pc);

  /// Create a copy of ShopPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopPhotoImplCopyWith<_$ShopPhotoImpl> get copyWith =>
      __$$ShopPhotoImplCopyWithImpl<_$ShopPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopPhotoImplToJson(this);
  }
}

abstract class _ShopPhoto implements ShopPhoto {
  const factory _ShopPhoto({
    @JsonKey(name: 'pc') required final ShopPhotoUrls pc,
  }) = _$ShopPhotoImpl;

  factory _ShopPhoto.fromJson(Map<String, dynamic> json) =
      _$ShopPhotoImpl.fromJson;

  /// PC용 사진 URL들
  @override
  @JsonKey(name: 'pc')
  ShopPhotoUrls get pc;

  /// Create a copy of ShopPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopPhotoImplCopyWith<_$ShopPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopPhotoUrls _$ShopPhotoUrlsFromJson(Map<String, dynamic> json) {
  return _ShopPhotoUrls.fromJson(json);
}

/// @nodoc
mixin _$ShopPhotoUrls {
  /// 대형 사진 URL
  @SafeStringConverter()
  @JsonKey(name: 'l', defaultValue: '')
  String get large => throw _privateConstructorUsedError;

  /// 중형 사진 URL
  @SafeStringConverter()
  @JsonKey(name: 'm', defaultValue: '')
  String get medium => throw _privateConstructorUsedError;

  /// 소형 사진 URL
  @SafeStringConverter()
  @JsonKey(name: 's', defaultValue: '')
  String get small => throw _privateConstructorUsedError;

  /// Serializes this ShopPhotoUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopPhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopPhotoUrlsCopyWith<ShopPhotoUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPhotoUrlsCopyWith<$Res> {
  factory $ShopPhotoUrlsCopyWith(
    ShopPhotoUrls value,
    $Res Function(ShopPhotoUrls) then,
  ) = _$ShopPhotoUrlsCopyWithImpl<$Res, ShopPhotoUrls>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'l', defaultValue: '') String large,
    @SafeStringConverter() @JsonKey(name: 'm', defaultValue: '') String medium,
    @SafeStringConverter() @JsonKey(name: 's', defaultValue: '') String small,
  });
}

/// @nodoc
class _$ShopPhotoUrlsCopyWithImpl<$Res, $Val extends ShopPhotoUrls>
    implements $ShopPhotoUrlsCopyWith<$Res> {
  _$ShopPhotoUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopPhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? small = null,
  }) {
    return _then(
      _value.copyWith(
            large:
                null == large
                    ? _value.large
                    : large // ignore: cast_nullable_to_non_nullable
                        as String,
            medium:
                null == medium
                    ? _value.medium
                    : medium // ignore: cast_nullable_to_non_nullable
                        as String,
            small:
                null == small
                    ? _value.small
                    : small // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShopPhotoUrlsImplCopyWith<$Res>
    implements $ShopPhotoUrlsCopyWith<$Res> {
  factory _$$ShopPhotoUrlsImplCopyWith(
    _$ShopPhotoUrlsImpl value,
    $Res Function(_$ShopPhotoUrlsImpl) then,
  ) = __$$ShopPhotoUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'l', defaultValue: '') String large,
    @SafeStringConverter() @JsonKey(name: 'm', defaultValue: '') String medium,
    @SafeStringConverter() @JsonKey(name: 's', defaultValue: '') String small,
  });
}

/// @nodoc
class __$$ShopPhotoUrlsImplCopyWithImpl<$Res>
    extends _$ShopPhotoUrlsCopyWithImpl<$Res, _$ShopPhotoUrlsImpl>
    implements _$$ShopPhotoUrlsImplCopyWith<$Res> {
  __$$ShopPhotoUrlsImplCopyWithImpl(
    _$ShopPhotoUrlsImpl _value,
    $Res Function(_$ShopPhotoUrlsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopPhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? small = null,
  }) {
    return _then(
      _$ShopPhotoUrlsImpl(
        large:
            null == large
                ? _value.large
                : large // ignore: cast_nullable_to_non_nullable
                    as String,
        medium:
            null == medium
                ? _value.medium
                : medium // ignore: cast_nullable_to_non_nullable
                    as String,
        small:
            null == small
                ? _value.small
                : small // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopPhotoUrlsImpl implements _ShopPhotoUrls {
  const _$ShopPhotoUrlsImpl({
    @SafeStringConverter()
    @JsonKey(name: 'l', defaultValue: '')
    required this.large,
    @SafeStringConverter()
    @JsonKey(name: 'm', defaultValue: '')
    required this.medium,
    @SafeStringConverter()
    @JsonKey(name: 's', defaultValue: '')
    required this.small,
  });

  factory _$ShopPhotoUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopPhotoUrlsImplFromJson(json);

  /// 대형 사진 URL
  @override
  @SafeStringConverter()
  @JsonKey(name: 'l', defaultValue: '')
  final String large;

  /// 중형 사진 URL
  @override
  @SafeStringConverter()
  @JsonKey(name: 'm', defaultValue: '')
  final String medium;

  /// 소형 사진 URL
  @override
  @SafeStringConverter()
  @JsonKey(name: 's', defaultValue: '')
  final String small;

  @override
  String toString() {
    return 'ShopPhotoUrls(large: $large, medium: $medium, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopPhotoUrlsImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, large, medium, small);

  /// Create a copy of ShopPhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopPhotoUrlsImplCopyWith<_$ShopPhotoUrlsImpl> get copyWith =>
      __$$ShopPhotoUrlsImplCopyWithImpl<_$ShopPhotoUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopPhotoUrlsImplToJson(this);
  }
}

abstract class _ShopPhotoUrls implements ShopPhotoUrls {
  const factory _ShopPhotoUrls({
    @SafeStringConverter()
    @JsonKey(name: 'l', defaultValue: '')
    required final String large,
    @SafeStringConverter()
    @JsonKey(name: 'm', defaultValue: '')
    required final String medium,
    @SafeStringConverter()
    @JsonKey(name: 's', defaultValue: '')
    required final String small,
  }) = _$ShopPhotoUrlsImpl;

  factory _ShopPhotoUrls.fromJson(Map<String, dynamic> json) =
      _$ShopPhotoUrlsImpl.fromJson;

  /// 대형 사진 URL
  @override
  @SafeStringConverter()
  @JsonKey(name: 'l', defaultValue: '')
  String get large;

  /// 중형 사진 URL
  @override
  @SafeStringConverter()
  @JsonKey(name: 'm', defaultValue: '')
  String get medium;

  /// 소형 사진 URL
  @override
  @SafeStringConverter()
  @JsonKey(name: 's', defaultValue: '')
  String get small;

  /// Create a copy of ShopPhotoUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopPhotoUrlsImplCopyWith<_$ShopPhotoUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
