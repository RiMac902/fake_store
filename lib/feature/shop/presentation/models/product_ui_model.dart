import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_ui_model.freezed.dart';

@freezed
abstract class ProductUiModel with _$ProductUiModel {
  const factory ProductUiModel({
    required ProductEntity product,
    required bool inWishlist,
  }) = _ProductUiModel;
}