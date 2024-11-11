// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @JsonKey(defaultValue: 0, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'discountPercentage')
  double get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'rating')
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'brand')
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'weight')
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'warrantyInformation')
  String get warrantyInformation => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], name: 'reviews')
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", name: 'thumbnail')
  String get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: "", name: 'title') String title,
      @JsonKey(defaultValue: "", name: 'description') String description,
      @JsonKey(defaultValue: "", name: 'category') String category,
      @JsonKey(defaultValue: 0, name: 'price') double price,
      @JsonKey(defaultValue: 0, name: 'discountPercentage')
      double discountPercentage,
      @JsonKey(defaultValue: 0, name: 'rating') double rating,
      @JsonKey(defaultValue: 0, name: 'stock') int stock,
      @JsonKey(defaultValue: "", name: 'brand') String brand,
      @JsonKey(defaultValue: 0, name: 'weight') int weight,
      @JsonKey(defaultValue: "", name: 'warrantyInformation')
      String warrantyInformation,
      @JsonKey(defaultValue: [], name: 'reviews') List<ReviewModel> reviews,
      @JsonKey(defaultValue: [], name: 'images') List<String> images,
      @JsonKey(defaultValue: "", name: 'thumbnail') String thumbnail});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? brand = null,
    Object? weight = null,
    Object? warrantyInformation = null,
    Object? reviews = null,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      warrantyInformation: null == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: "", name: 'title') String title,
      @JsonKey(defaultValue: "", name: 'description') String description,
      @JsonKey(defaultValue: "", name: 'category') String category,
      @JsonKey(defaultValue: 0, name: 'price') double price,
      @JsonKey(defaultValue: 0, name: 'discountPercentage')
      double discountPercentage,
      @JsonKey(defaultValue: 0, name: 'rating') double rating,
      @JsonKey(defaultValue: 0, name: 'stock') int stock,
      @JsonKey(defaultValue: "", name: 'brand') String brand,
      @JsonKey(defaultValue: 0, name: 'weight') int weight,
      @JsonKey(defaultValue: "", name: 'warrantyInformation')
      String warrantyInformation,
      @JsonKey(defaultValue: [], name: 'reviews') List<ReviewModel> reviews,
      @JsonKey(defaultValue: [], name: 'images') List<String> images,
      @JsonKey(defaultValue: "", name: 'thumbnail') String thumbnail});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? brand = null,
    Object? weight = null,
    Object? warrantyInformation = null,
    Object? reviews = null,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      warrantyInformation: null == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {@JsonKey(defaultValue: 0, name: 'id') required this.id,
      @JsonKey(defaultValue: "", name: 'title') required this.title,
      @JsonKey(defaultValue: "", name: 'description') required this.description,
      @JsonKey(defaultValue: "", name: 'category') required this.category,
      @JsonKey(defaultValue: 0, name: 'price') required this.price,
      @JsonKey(defaultValue: 0, name: 'discountPercentage')
      required this.discountPercentage,
      @JsonKey(defaultValue: 0, name: 'rating') required this.rating,
      @JsonKey(defaultValue: 0, name: 'stock') required this.stock,
      @JsonKey(defaultValue: "", name: 'brand') required this.brand,
      @JsonKey(defaultValue: 0, name: 'weight') required this.weight,
      @JsonKey(defaultValue: "", name: 'warrantyInformation')
      required this.warrantyInformation,
      @JsonKey(defaultValue: [], name: 'reviews')
      required final List<ReviewModel> reviews,
      @JsonKey(defaultValue: [], name: 'images')
      required final List<String> images,
      @JsonKey(defaultValue: "", name: 'thumbnail') required this.thumbnail})
      : _reviews = reviews,
        _images = images;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  final int id;
  @override
  @JsonKey(defaultValue: "", name: 'title')
  final String title;
  @override
  @JsonKey(defaultValue: "", name: 'description')
  final String description;
  @override
  @JsonKey(defaultValue: "", name: 'category')
  final String category;
  @override
  @JsonKey(defaultValue: 0, name: 'price')
  final double price;
  @override
  @JsonKey(defaultValue: 0, name: 'discountPercentage')
  final double discountPercentage;
  @override
  @JsonKey(defaultValue: 0, name: 'rating')
  final double rating;
  @override
  @JsonKey(defaultValue: 0, name: 'stock')
  final int stock;
  @override
  @JsonKey(defaultValue: "", name: 'brand')
  final String brand;
  @override
  @JsonKey(defaultValue: 0, name: 'weight')
  final int weight;
  @override
  @JsonKey(defaultValue: "", name: 'warrantyInformation')
  final String warrantyInformation;
  final List<ReviewModel> _reviews;
  @override
  @JsonKey(defaultValue: [], name: 'reviews')
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final List<String> _images;
  @override
  @JsonKey(defaultValue: [], name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(defaultValue: "", name: 'thumbnail')
  final String thumbnail;

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, weight: $weight, warrantyInformation: $warrantyInformation, reviews: $reviews, images: $images, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      category,
      price,
      discountPercentage,
      rating,
      stock,
      brand,
      weight,
      warrantyInformation,
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(_images),
      thumbnail);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {@JsonKey(defaultValue: 0, name: 'id') required final int id,
      @JsonKey(defaultValue: "", name: 'title') required final String title,
      @JsonKey(defaultValue: "", name: 'description')
      required final String description,
      @JsonKey(defaultValue: "", name: 'category')
      required final String category,
      @JsonKey(defaultValue: 0, name: 'price') required final double price,
      @JsonKey(defaultValue: 0, name: 'discountPercentage')
      required final double discountPercentage,
      @JsonKey(defaultValue: 0, name: 'rating') required final double rating,
      @JsonKey(defaultValue: 0, name: 'stock') required final int stock,
      @JsonKey(defaultValue: "", name: 'brand') required final String brand,
      @JsonKey(defaultValue: 0, name: 'weight') required final int weight,
      @JsonKey(defaultValue: "", name: 'warrantyInformation')
      required final String warrantyInformation,
      @JsonKey(defaultValue: [], name: 'reviews')
      required final List<ReviewModel> reviews,
      @JsonKey(defaultValue: [], name: 'images')
      required final List<String> images,
      @JsonKey(defaultValue: "", name: 'thumbnail')
      required final String thumbnail}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  int get id;
  @override
  @JsonKey(defaultValue: "", name: 'title')
  String get title;
  @override
  @JsonKey(defaultValue: "", name: 'description')
  String get description;
  @override
  @JsonKey(defaultValue: "", name: 'category')
  String get category;
  @override
  @JsonKey(defaultValue: 0, name: 'price')
  double get price;
  @override
  @JsonKey(defaultValue: 0, name: 'discountPercentage')
  double get discountPercentage;
  @override
  @JsonKey(defaultValue: 0, name: 'rating')
  double get rating;
  @override
  @JsonKey(defaultValue: 0, name: 'stock')
  int get stock;
  @override
  @JsonKey(defaultValue: "", name: 'brand')
  String get brand;
  @override
  @JsonKey(defaultValue: 0, name: 'weight')
  int get weight;
  @override
  @JsonKey(defaultValue: "", name: 'warrantyInformation')
  String get warrantyInformation;
  @override
  @JsonKey(defaultValue: [], name: 'reviews')
  List<ReviewModel> get reviews;
  @override
  @JsonKey(defaultValue: [], name: 'images')
  List<String> get images;
  @override
  @JsonKey(defaultValue: "", name: 'thumbnail')
  String get thumbnail;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
