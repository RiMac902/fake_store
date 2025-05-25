import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_entity.freezed.dart';

@freezed
abstract class CartEntity with _$CartEntity {
  const factory CartEntity({
    required int id,
    required int userId,
    required String date,
    required List<CartProductEntity> products,
  }) = _CartEntity;
}

@freezed
abstract class CartProductEntity with _$CartProductEntity {
  const factory CartProductEntity({
    required int productId,
    required int quantity,
  }) = _CartProductEntity;
}