import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';

abstract interface class ShopRepository {
  Future<List<ProductEntity>> getProducts();
  Future<ProductEntity> getProduct(String id);
  Future<List<CartEntity>> getCarts();
  Future<CartEntity> getCart(String id);
  Future<CartEntity> addToCart({
    required int userId,
    required String date,
    required List<CartProductEntity> products,
  });
  Future<void> removeFromCart(String id);
  Future<void> addToWishlist(String id);
  Future<void> removeFromWishlist(String id);
  Future<List<ProductEntity>> getWishlist();
}