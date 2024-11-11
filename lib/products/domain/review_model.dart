import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    @JsonKey(
      defaultValue: 0,
      name: 'id',
    )
    required int id,
    @JsonKey(defaultValue: 0, name: 'rating') required int rating,
    @JsonKey(defaultValue: "", name: 'comment') required String comment,
    @JsonKey(defaultValue: "", name: 'reviewerName') required String name,
    @JsonKey(defaultValue: "", name: 'reviewerEmail') required String reviewerEmail,
    @JsonKey(defaultValue: "", name: 'date')
    required String date,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
      // Map<String, dynamic> toJson() => _$r(this);
  // factory ReviewModel.initial() => const ReviewModel(
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
