import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required RatingModel rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}

@freezed
abstract class RatingModel with _$RatingModel {
  const factory RatingModel({
    required double rate,
    required int count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) => _$RatingModelFromJson(json);
}

extension ProductModelX on ProductModel {
  ProductEntity toEntity() => ProductEntity(
    id: id,
    title: title,
    price: price,
    description: description,
    category: category,
    image: image,
    rating: rating.toEntity(),
  );
}

extension RatingModelX on RatingModel {
  RatingEntity toEntity() => RatingEntity(
    rate: rate,
    count: count,
  );
} 