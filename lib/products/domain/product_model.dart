import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_shop/products/domain/review_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(
      defaultValue: 0,
      name: 'id',
    )
    required int id,
    @JsonKey(defaultValue: "", name: 'title') required String title,
    @JsonKey(defaultValue: "", name: 'description') required String description,
    @JsonKey(defaultValue: "", name: 'category') required String category,
    @JsonKey(defaultValue: 0, name: 'price') required double price,
    @JsonKey(defaultValue: 0, name: 'discountPercentage')
    required double discountPercentage,
    @JsonKey(defaultValue: 0, name: 'rating') required double rating,
    @JsonKey(defaultValue: 0, name: 'stock') required int stock,
    @JsonKey(defaultValue: "", name: 'brand') required String brand,
    @JsonKey(defaultValue: 0, name: 'weight') required int weight,
    @JsonKey(defaultValue: "", name: 'warrantyInformation')
    required String warrantyInformation,
    @JsonKey(defaultValue: [], name: 'reviews')
    required  List<ReviewModel> reviews,
    @JsonKey(defaultValue: [], name: 'images')
    required  List<String> images,
    @JsonKey(defaultValue: "", name: 'thumbnail')
    required  String thumbnail,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  // factory ProductModel.toJson(Map<String, dynamic> json) =>
  //     _$$ProductModelToJson(json);
  // factory ProductModel.initial() => const ProductModel(
  //       id: 0,
  //       ownerId: 0,
  //       ownerType: 0,
  //       type: 0,
  //       fromCountryId: 0,
  //       fromRegionId: 0,
  //       fromDistrictId: 0,
  //       toCountryId: 0,
  //       toRegionId: 0,
  //       toDistrictId: 0,
  //       date: "",
  //       fromTime: "",
  //       toTime: "",
  //       comment: "",
  //       status: 0,
  //       requests: 0,
  //       name: "",
  //       surname: "",
  //       phone: 0,
  //     );
}
