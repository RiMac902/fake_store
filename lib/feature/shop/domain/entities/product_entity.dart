import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required RatingEntity rating,
  }) = _ProductEntity;
}

@freezed
abstract class RatingEntity with _$RatingEntity {
  const factory RatingEntity({
    required double rate,
    required int count,
  }) = _RatingEntity;
}