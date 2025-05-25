part of 'shop_bloc.dart';

@freezed
sealed class ShopEvent with _$ShopEvent {
  const factory ShopEvent.started() = Started;
  const factory ShopEvent.getProducts() = GetProducts;
  const factory ShopEvent.getProduct(String id) = GetProduct;
  const factory ShopEvent.getCarts() = GetCarts;
  const factory ShopEvent.getCart(String id) = GetCart;
  const factory ShopEvent.addToCart(AddToCartParams params) = AddToCart;
  const factory ShopEvent.removeFromCart(String id) = RemoveFromCart;
  const factory ShopEvent.updateCartQuantity(int productId, int quantity) = UpdateCartQuantity;
  const factory ShopEvent.addToWishlist(String id) = AddToWishlist;
  const factory ShopEvent.removeFromWishlist(String id) = RemoveFromWishlist;
  const factory ShopEvent.getWishlist() = GetWishlist;
}