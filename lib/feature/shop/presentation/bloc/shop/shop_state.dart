part of 'shop_bloc.dart';

@freezed
sealed class ShopState with _$ShopState {
  const factory ShopState.initial() = Initial;
  const factory ShopState.loading() = Loading;
  const factory ShopState.productsLoaded(List<ProductEntity> products) = ProductsLoaded;
  const factory ShopState.productLoaded(ProductEntity product) = ProductLoaded;
  const factory ShopState.cartsLoaded(List<CartEntity> carts) = CartsLoaded;
  const factory ShopState.cartLoaded(CartEntity cart) = CartLoaded;
  const factory ShopState.cartRemoved() = CartRemoved;
  const factory ShopState.cartUpdated(CartEntity cart) = CartUpdated;
  const factory ShopState.cartQuantityUpdated(CartEntity cart) = CartQuantityUpdated;
  const factory ShopState.wishlistLoaded(List<ProductEntity> products) = WishlistLoaded;
  const factory ShopState.wishlistUpdated() = WishlistUpdated;
  const factory ShopState.error(String message) = Error;
}
