// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  @JsonKey(defaultValue: 0, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'reviewerName')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'reviewerEmail')
  String get reviewerEmail => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'date')
  String get date => throw _privateConstructorUsedError;

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
          ReviewModel value, $Res Function(ReviewModel) then) =
      _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: 0, name: 'rating') int rating,
      @JsonKey(defaultValue: "", name: 'comment') String comment,
      @JsonKey(defaultValue: "", name: 'reviewerName') String name,
      @JsonKey(defaultValue: "", name: 'reviewerEmail') String reviewerEmail,
      @JsonKey(defaultValue: "", name: 'date') String date});
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rating = null,
    Object? comment = null,
    Object? name = null,
    Object? reviewerEmail = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerEmail: null == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewModelImplCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$ReviewModelImplCopyWith(
          _$ReviewModelImpl value, $Res Function(_$ReviewModelImpl) then) =
      __$$ReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: 0, name: 'rating') int rating,
      @JsonKey(defaultValue: "", name: 'comment') String comment,
      @JsonKey(defaultValue: "", name: 'reviewerName') String name,
      @JsonKey(defaultValue: "", name: 'reviewerEmail') String reviewerEmail,
      @JsonKey(defaultValue: "", name: 'date') String date});
}

/// @nodoc
class __$$ReviewModelImplCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$ReviewModelImpl>
    implements _$$ReviewModelImplCopyWith<$Res> {
  __$$ReviewModelImplCopyWithImpl(
      _$ReviewModelImpl _value, $Res Function(_$ReviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rating = null,
    Object? comment = null,
    Object? name = null,
    Object? reviewerEmail = null,
    Object? date = null,
  }) {
    return _then(_$ReviewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerEmail: null == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewModelImpl implements _ReviewModel {
  const _$ReviewModelImpl(
      {@JsonKey(defaultValue: 0, name: 'id') required this.id,
      @JsonKey(defaultValue: 0, name: 'rating') required this.rating,
      @JsonKey(defaultValue: "", name: 'comment') required this.comment,
      @JsonKey(defaultValue: "", name: 'reviewerName') required this.name,
      @JsonKey(defaultValue: "", name: 'reviewerEmail')
      required this.reviewerEmail,
      @JsonKey(defaultValue: "", name: 'date') required this.date});

  factory _$ReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewModelImplFromJson(json);

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  final int id;
  @override
  @JsonKey(defaultValue: 0, name: 'rating')
  final int rating;
  @override
  @JsonKey(defaultValue: "", name: 'comment')
  final String comment;
  @override
  @JsonKey(defaultValue: "", name: 'reviewerName')
  final String name;
  @override
  @JsonKey(defaultValue: "", name: 'reviewerEmail')
  final String reviewerEmail;
  @override
  @JsonKey(defaultValue: "", name: 'date')
  final String date;

  @override
  String toString() {
    return 'ReviewModel(id: $id, rating: $rating, comment: $comment, name: $name, reviewerEmail: $reviewerEmail, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rating, comment, name, reviewerEmail, date);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      __$$ReviewModelImplCopyWithImpl<_$ReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewModel implements ReviewModel {
  const factory _ReviewModel(
      {@JsonKey(defaultValue: 0, name: 'id') required final int id,
      @JsonKey(defaultValue: 0, name: 'rating') required final int rating,
      @JsonKey(defaultValue: "", name: 'comment') required final String comment,
      @JsonKey(defaultValue: "", name: 'reviewerName')
      required final String name,
      @JsonKey(defaultValue: "", name: 'reviewerEmail')
      required final String reviewerEmail,
      @JsonKey(defaultValue: "", name: 'date')
      required final String date}) = _$ReviewModelImpl;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$ReviewModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  int get id;
  @override
  @JsonKey(defaultValue: 0, name: 'rating')
  int get rating;
  @override
  @JsonKey(defaultValue: "", name: 'comment')
  String get comment;
  @override
  @JsonKey(defaultValue: "", name: 'reviewerName')
  String get name;
  @override
  @JsonKey(defaultValue: "", name: 'reviewerEmail')
  String get reviewerEmail;
  @override
  @JsonKey(defaultValue: "", name: 'date')
  String get date;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
