import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartModel with _$CartModel {
  const factory CartModel({
    required int id,
    required int userId,
    required String date,
    required List<CartProductModel> products,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
}

@freezed
abstract class CartProductModel with _$CartProductModel {
  const factory CartProductModel({
    required int productId,
    required int quantity,
  }) = _CartProductModel;

  factory CartProductModel.fromJson(Map<String, dynamic> json) => _$CartProductModelFromJson(json);
}

extension CartModelX on CartModel {
  CartEntity toEntity() => CartEntity(
    id: id,
    userId: userId,
    date: date,
    products: products.map((e) => e.toEntity()).toList(),
  );
}

extension CartProductModelX on CartProductModel {
  CartProductEntity toEntity() => CartProductEntity(
    productId: productId,
    quantity: quantity,
  );
} 