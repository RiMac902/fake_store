part of 'shop_bloc.dart';

@freezed
abstract class ShopState with _$ShopState {
  const factory ShopState({
    @Default(false) bool isLoading,
    @Default([]) List<ProductUiModel> products,
    ProductUiModel? product,
    @Default([]) List<CartItem> cart,
    @Default([]) List<ProductUiModel> wishlist,
    String? productsError,
    String? cartError,
    String? wishlistError,
  }) = _ShopState;
}
