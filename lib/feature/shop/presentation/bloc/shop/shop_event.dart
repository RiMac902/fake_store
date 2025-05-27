part of 'shop_bloc.dart';

@freezed
sealed class ShopEvent with _$ShopEvent {
  const factory ShopEvent.started() = Started;
  const factory ShopEvent.getProducts() = GetProducts;
  const factory ShopEvent.getProduct(String id) = GetProduct;
  const factory ShopEvent.getCarts() = GetCarts;
  const factory ShopEvent.getCart(String id) = GetCart;
  const factory ShopEvent.addToCart(String productId) = AddToCart;
  const factory ShopEvent.removeFromCart(String productId) = RemoveFromCart;
  const factory ShopEvent.updateCartQuantity(int productId, int quantity) = UpdateCartQuantity;
  const factory ShopEvent.addToWishlist(String id) = AddToWishlist;
  const factory ShopEvent.removeFromWishlist(String id) = RemoveFromWishlist;
  const factory ShopEvent.getWishlist() = GetWishlist;
  const factory ShopEvent.increaseCartQuantity(String productId) = IncreaseCartQuantity;
  const factory ShopEvent.decreaseCartQuantity(String productId) = DecreaseCartQuantity;
}